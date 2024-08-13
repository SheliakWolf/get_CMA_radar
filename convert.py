import PIL.Image as Image
import numpy as np
import os
import time
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler


def img2data(img_path, write_path):
    img = Image.open(img_path)
    img = img.convert('RGBA')
    data = np.array(img, dtype=np.int64)
    data = data[0:1204, 0:771, :]
    print(data.shape)
    #华东：data = data[2:1205, 3:772, 3]
    # 只保留RGBA中的R和G通道
    matrix_R = data[:, :, 0]
    matrix_G = data[:, :, 1]
    matrix_B = data[:, :, 2]
    matrix_RGB = 1000000*matrix_R + 1000*matrix_G + matrix_B + 1000000000
    output = np.zeros((1204,771))
    output[np.where(matrix_RGB == 1064064064)] = np.nan
    output[np.where(matrix_RGB == 1102102102)] = np.nan
    output[np.where(matrix_RGB == 1104104104)] = np.nan
    output[np.where(matrix_RGB == 1001160246)] = 7.5
    output[np.where(matrix_RGB == 1000236236)] = 12.5
    output[np.where(matrix_RGB == 1109250061)] = 17.5
    output[np.where(matrix_RGB == 1000216000)] = 22.5
    output[np.where(matrix_RGB == 1001144000)] = 27.5
    output[np.where(matrix_RGB == 1255255000)] = 32.5
    output[np.where(matrix_RGB == 1231192000)] = 37.5
    output[np.where(matrix_RGB == 1255144000)] = 42.5
    output[np.where(matrix_RGB == 1255000000)] = 47.5
    output[np.where(matrix_RGB == 1214000000)] = 52.5
    output[np.where(matrix_RGB == 1192000000)] = 57.5
    output[np.where(matrix_RGB == 1255000240)] = 62.5
    output[np.where(matrix_RGB == 1150000180)] = 67.5
    np.savetxt(write_path,
    output, 
    delimiter=',', 
    fmt='%.1f', 
    header='Dolpler Radar Data, Area:EastChina, Time:' + write_path[39:51] + ' Data Size:' + str(output.shape))
    return img

class MyHandler(FileSystemEventHandler):
    def on_created(self, event):
        if event.src_path.endswith('.PNG'):
            print(f'File created: {event.src_path}')
            time.sleep(10)
            file = open(f"./{event.src_path}.txt",mode='w')
            file.close()
            img2data(event.src_path, f"./{event.src_path}.txt")

def main():
    event_handler = MyHandler()
    observer = Observer()
    observer.schedule(event_handler, path='./eastchina', recursive=False)
    observer.start()
    try:
        while True:
            time.sleep(100)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()

if __name__ == "__main__":
    main()
