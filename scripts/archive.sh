#!/usr/bin/env bash

BASE_DIR="/home/pi/Captures"
DATE_START=`date -d "1 day ago" '+%Y%m%d'`
DATE_END=`date +%Y%m%d`
CAPTURE_DIR="$DATE_START-$DATE_END"
OUTPUT_FILE="$CAPTURE_DIR.tar.gz"

cd $BASE_DIR

if [ -d $CAPTURE_DIR ]; then
	killall -9 meteotux_pi

	if [ ! -f $OUTPUT_FILE ]; then
		tar -czf $OUTPUT_FILE $CAPTURE_DIR && rm -rf $CAPTURE_DIR
	fi
fi
