#!/bin/sh
current_time=$(date -u +"%Y-%m-%d %H:%M:%S")
echo "当前时间是: $current_timeii"
while true;  do	
    website_part1="http://image.nmc.cn/product/"
    current_year=$(date -d '20 minutes ago' -u +"%Y")
    current_month=$(date -d '20 minutes ago' -u +"%m")
    current_date=$(date -d '20 minutes ago' -u +"%d")
    current_hour=$(date -d '20 minutes ago' -u +"%H")
    current_minute=$(date -d '20 minutes ago' -u +"%M")
    website_part2_eastchina="RDCP/SEVP_AOC_RDCP_SLDAS3_ECREF_AECN_L88_PI_"
    website_part2_binzhou="RDCP/SEVP_AOC_RDCP_SLDAS3_ECREF_AZ9543_L88_PI_"
    website_part2_daxing="RDCP/SEVP_AOC_RDCP_SLDAS3_ECREF_AZ9010_L88_PI_"
    website_part2_linyi="RDCP/SEVP_AOC_RDCP_SLDAS3_ECREF_AZ9539_L88_PI_"
    website_part2_midchina="RDCP/SEVP_AOC_RDCP_SLDAS3_ECREF_ACCN_L88_PI_"
    website_part2_northchina="RDCP/SEVP_AOC_RDCP_SLDAS3_ECREF_ANCN_L88_PI_"
    website_part2_qingdao="RDCP/SEVP_AOC_RDCP_SLDAS3_ECREF_AZ9532_L88_PI_"
    website_part2_rongcheng="RDCP/SEVP_AOC_RDCP_SLDAS3_ECREF_AZ9631_L88_PI_"
    website_part2_southchina="RDCP/SEVP_AOC_RDCP_SLDAS3_ECREF_ASCN_L88_PI_"
    website_part2_weifang="RDCP/SEVP_AOC_RDCP_SLDAS3_ECREF_AZ9536_L88_PI_"
    website_part2_wuhan="RDCP/SEVP_AOC_RDCP_SLDAS3_ECREF_AZ9270_L88_PI_"
    website_part2_yantai="RDCP/SEVP_AOC_RDCP_SLDAS3_ECREF_AZ9535_L88_PI_"
    website_part3="00000.PNG"
    website="${website_part1}${current_year}/${current_month}/${current_date}/${website_part2_eastchina}${current_year}${current_month}${current_date}${current_hour}${current_minute}${website_part3}"
    echo "${website}"
    wget -P ./eastchina/ ${website}
    website="${website_part1}${current_year}/${current_month}/${current_date}/${website_part2_binzhou}${current_year}${current_month}${current_date}${current_hour}${current_minute}${website_part3}"
    echo "${website}"
    wget -P ./binzhou/ ${website}
    website="${website_part1}${current_year}/${current_month}/${current_date}/${website_part2_daxing}${current_year}${current_month}${current_date}${current_hour}${current_minute}${website_part3}"
    echo "${website}"
    wget -P ./daxing/ ${website}
    website="${website_part1}${current_year}/${current_month}/${current_date}/${website_part2_linyi}${current_year}${current_month}${current_date}${current_hour}${current_minute}${website_part3}"
    echo "${website}"
    wget -P ./linyi/ ${website}
    website="${website_part1}${current_year}/${current_month}/${current_date}/${website_part2_midchina}${current_year}${current_month}${current_date}${current_hour}${current_minute}${website_part3}"
    echo "${website}"
    wget -P ./midchina/ ${website}
    website="${website_part1}${current_year}/${current_month}/${current_date}/${website_part2_northchina}${current_year}${current_month}${current_date}${current_hour}${current_minute}${website_part3}"
    echo "${website}"
    wget -P ./northchina/ ${website}
    website="${website_part1}${current_year}/${current_month}/${current_date}/${website_part2_qingdao}${current_year}${current_month}${current_date}${current_hour}${current_minute}${website_part3}"
    echo "${website}"
    wget -P ./qingdao/ ${website}
    website="${website_part1}${current_year}/${current_month}/${current_date}/${website_part2_rongcheng}${current_year}${current_month}${current_date}${current_hour}${current_minute}${website_part3}"
    echo "${website}"
    wget -P ./rongcheng/ ${website}
    website="${website_part1}${current_year}/${current_month}/${current_date}/${website_part2_southchina}${current_year}${current_month}${current_date}${current_hour}${current_minute}${website_part3}"
    echo "${website}"
    wget -P ./southchina/ ${website}
    website="${website_part1}${current_year}/${current_month}/${current_date}/${website_part2_weifang}${current_year}${current_month}${current_date}${current_hour}${current_minute}${website_part3}"
    echo "${website}"
    wget -P ./weifang/ ${website}
    website="${website_part1}${current_year}/${current_month}/${current_date}/${website_part2_wuhan}${current_year}${current_month}${current_date}${current_hour}${current_minute}${website_part3}"
    echo "${website}"
    wget -P ./wuhan/ ${website}
    website="${website_part1}${current_year}/${current_month}/${current_date}/${website_part2_yantai}${current_year}${current_month}${current_date}${current_hour}${current_minute}${website_part3}"
    echo "${website}"
    wget -P ./yantai/ ${website}
    sleep 58
done