#!/bin/sh
git clone https://github.com/andreyvit/yoursway-create-dmg.git
cd yoursway-create-dmg

test -f GSplus-Install.dmg && rm GSplus-Install.dmg
./create-dmg \
  --volname "GSplus" \
  --volicon "../assets/gsp-dmg-icons.icns" \
  --background "../assets/gsp_dmg_bg_600x500.png" \
  --window-pos 200 120 \
  --window-size 600 500 \
  --icon-size 100 \
  --icon GSplus.app 180 130 \
  --hide-extension GSplus.app \
  --app-drop-link 410 130 \
  --icon README.txt  105 330 \
  --icon gsplusmanual.pdf  225 330 \
  --icon gsplusmanual.txt  365 330 \
  --icon COPYING.txt  495 330 \
  GSplus-Install.dmg \
  ../gsplus-osx/
cp GSplus-Install.dmg ..
