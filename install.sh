#!/bin/bash
set -e

# Make backup of original firmware
if [[ ! -e /usr/lib/firmware/htc_7010.fw.backup ]];
then
	cp /usr/lib/firmware/htc_7010.fw /usr/lib/firmware/htc_7010.fw.backup
	cp /usr/lib/firmware/htc_9271.fw /usr/lib/firmware/htc_9271.fw.backup
	echo "Made backup of original files (old directory)"
fi

if [[ ! -e /usr/lib/firmware/ath9k_htc/htc_7010-1.4.0.fw.backup ]];
then
	cp /usr/lib/firmware/ath9k_htc/htc_7010-1.4.0.fw /usr/lib/firmware/ath9k_htc/htc_7010-1.4.0.fw.backup
	cp /usr/lib/firmware/ath9k_htc/htc_9271-1.4.0.fw /usr/lib/firmware/ath9k_htc/htc_9271-1.4.0.fw.backup
	echo "Made backup of original files (new directory)"
fi

cp target_firmware/htc_*.fw /usr/lib/firmware/
cp target_firmware/htc_7010.fw /usr/lib/firmware/ath9k_htc/htc_7010-1.4.0.fw
cp target_firmware/htc_9271.fw /usr/lib/firmware/ath9k_htc/htc_9271-1.4.0.fw
echo "Copied compiled firmware to the system"

