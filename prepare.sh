#!/bin/sh

cd ~/workspace
mkdir download
cd download

# 日経ソフトウエア 2021年7月号
# https://info.nikkeibp.co.jp/media/NSW/atcl/mag/051400036/
# 「特集5 ゲームボーイで動くゲームを作ろう 第1部」（t52107.zip） 
wget https://4c281b16296b2ab02a4e0b2e3f75446d.cdnext.stream.ne.jp/itpro/nsw/202107/t52107.zip
unzip -o t52107.zip
rm t52107.zip

# copyright, readme
iconv -f sjis -t utf8 -o _copyright.utf8.txt copyright.txt
iconv -f sjis -t utf8 -o _readme.utf8.txt readme.txt

# STEP 1
# - リスト1
iconv -f sjis -t utf8 -o ../tutorial/step1/main.c list01.txt

# STEP 2
# - リスト3
iconv -f utf8 -t utf8 -o ../tutorial/step2/maketile/maketile.py list03.txt
cp -f tile.bmp ../tutorial/step2/maketile/tile.bmp
# - リスト4
iconv -f sjis -t utf8 -o ../tutorial/step2/main.c list04.txt
cp -f tile.h ../tutorial/step2/tile.h

# STEP 3
# - リスト5
iconv -f sjis -t utf8 -o ../tutorial/step3/main.c list05.txt
cp -f tile.h ../tutorial/step3/tile.h

# STEP 4
# - リスト6
iconv -f sjis -t utf8 -o ../tutorial/step4/main.c list06.txt
cp -f tile.h ../tutorial/step4/tile.h
