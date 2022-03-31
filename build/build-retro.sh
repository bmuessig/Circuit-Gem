#!/bin/bash

IMAGE_OUT="retropie-4.4.img"
IMAGE_OUT_GZ="${IMAGE_OUT}".gz

if [ ! -f "${IMAGE_OUT}" ]; then
  echo "Downloading and extracting image"
  wget -nc -O "${IMAGE_OUT_GZ}" "https://github.com/RetroPie/RetroPie-Setup/releases/download/4.4/retropie-4.4-rpi1_zero.img.gz"
  gunzip "${IMAGE_OUT_GZ}"
fi

./build-image.sh YES "${IMAGE_OUT}"
