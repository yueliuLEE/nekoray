#!/bin/bash
set -e

source libs/deploy_common.sh
DEST=$DEPLOYMENT/public_res
rm -rf $DEST
mkdir -p $DEST

#### Download geodata ####
curl -Lso $DEST/geoip.dat "https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat"
curl -Lso $DEST/geosite.dat "https://github.com/v2fly/domain-list-community/releases/latest/download/dlc.dat"
curl -Lso $DEST/geoip.db "https://github.com/SagerNet/sing-geoip/releases/latest/download/geoip.db"
curl -Lso $DEST/geosite.db "https://github.com/SagerNet/sing-geosite/releases/latest/download/geosite.db"

#### copy res/public ####
cp res/public/* $DEST
