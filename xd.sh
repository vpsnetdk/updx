#!/bin/bash
sj(){
local file=$1
for x in $(echo "ChumoGH! ChumoGH @ChumoGH ChumoGH|ADM ChumoGH-Script"); do
[[ $x = "@ChumoGH" ]] && fx="@drowkid01"
[[ $x = "ChumoGH" ]] && fx="✧ | ᴅʀᴏᴡᴋɪᴅ | ✧"
[[ $x = "ChumoGH!" ]] && fx="DrowKid!"
[[ $x = "/ChumoGH/" ]] && { sed -i "s|/ChumoGH|/drowkid01|g" $file ; }
[[ $x = @("ChumoGH|ADM"|"ChumoGH-Script") ]] && fx="ChuKK-SCRIPT"
	sed -i "s/$x/$fx/g" $file
done
}
sj "$1"
