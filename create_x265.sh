#!/bin/sh
FFMPEG_COMMAND="ffmpeg -loglevel fatal"
FFMPEG_PRESET="-c:v libx265 -preset slow -crf 24 -aspect 16:9 -c:a libopus -ac 2"

case $# in
  0 ) echo "Userge: $0 source_file [from-time [to-time]]" ;;
  1 ) ${FFMPEG_COMMAND} -i $1 ${FFMPEG_PRESET} ${1%.*}_x265.mkv ;;
  2 ) ${FFMPEG_COMMAND} -ss $2 -i $1 ${FFMPEG_PRESET} ${1%.*}_x265.mkv ;;
  3 ) ${FFMPEG_COMMAND} -ss $2 -i $1 -to $3 ${FFMPEG_PRESET} ${1%.*}_x265.mkv ;;
esac

