#!/bin/bash

# This script is used to build.md the package for Linux 64-bit.
rm -r out
npm run package
mv out/EasySpider-linux-x64 out/EasySpider
rm -r out/EasySpider/resources/app/chrome_win64
rm -r out/EasySpider/resources/app/chromedrivers
rm -r out/EasySpider/resources/app/Data
rm -r out/EasySpider/resources/app/.idea
rm -r out/EasySpider/resources/app/tasks
rm -r out/EasySpider/resources/app/execution_instances
rm -r out/EasySpider/resources/app/user_data
rm -r ../.temp_to_pub/EasySpider_Linux_x64/EasySpider
rm out/EasySpider/resources/app/vs_BuildTools.exe
mv out/EasySpider ../.temp_to_pub/EasySpider_Linux_x64/EasySpider
cp ../ExecuteStage/easyspider_executestage.py ../.temp_to_pub/EasySpider_Linux_x64/Code
cp ../ExecuteStage/myChrome.py ../.temp_to_pub/EasySpider_Linux_x64/Code
cp ../ExecuteStage/utils.py ../.temp_to_pub/EasySpider_Linux_x64/Code
chmod 777 ../.temp_to_pub/EasySpider_Linux_x64/easy-spider.sh

rm -r ..\.temp_to_pub\EasySpider_Linux_x64\user_data
rm -r  ..\.temp_to_pub\EasySpider_Linux_x64\execution_instances
mkdir ..\.temp_to_pub\EasySpider_Linux_x64\execution_instances
rm -r  ..\.temp_to_pub\EasySpider_Linux_x64\Data
mkdir ..\.temp_to_pub\EasySpider_Linux_x64\Data