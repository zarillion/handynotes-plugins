#!/bin/bash

set -e

ADDON=${PWD##*/}
VERSION="$(grep "## Version:" $ADDON.toc | sed "s/## Version: //")"
TAG="v$VERSION"
FILE="$HOME/Downloads/${ADDON}_${TAG}.zip"

if [[ -z "$(git tag -l | grep $TAG)" ]]; then
    git tag -a $TAG -m "Release $VERSION"
    git push
    git push --tags
fi

git archive ${TAG} \
    --prefix $ADDON/ \
    --output $FILE \
    *.toc *.xml *.lua core/ libs/ localization/ \
    icons/icons.blp icons/circle.tga icons/line.tga

echo "Created $FILE"
