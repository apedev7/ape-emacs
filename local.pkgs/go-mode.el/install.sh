#!/bin/bash -e
#
REL=120fb91

cd $(dirname $(readlink -e $0))
wks=$(pwd)/tmp.git

git clone --no-checkout https://github.com/dominikh/go-mode.el.git $wks
(cd $wks && git checkout -b tagged $REL)

mv $wks/*.el .
rm -rf $wks
