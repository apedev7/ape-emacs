#!/bin/bash -e
#
REL=cef196a

cd $(dirname $(readlink -e $0))
wks=$(pwd)/tmp.git

git clone --no-checkout https://github.com/tsgates/git-emacs.git $wks
(cd $wks && git checkout -b tagged $REL)

mv $wks/*.el .
rm -rf $wks
