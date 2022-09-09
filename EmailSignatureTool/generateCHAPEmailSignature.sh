#!/bin/bash

printf '
\e[0;92m
      ___           ___           ___           ___
     /\__\         /\  \         /\  \         /\  \
    /:/  /         \:\  \       /::\  \       /::\  \
   /:/  /           \:\  \     /:/\:\  \     /:/\:\__\
  /:/  /  ___   ___ /::\  \   /:/ /::\  \   /:/ /:/  /
 /:/__/  /\__\ /\  /:/\:\__\ /:/_/:/\:\__\ /:/_/:/  /
 \:\  \ /:/  / \:\/:/  \/__/ \:\/:/  \/__/ \:\/:/  /
  \:\  /:/  /   \::/__/       \::/__/       \::/__/
   \:\/:/  /     \:\  \        \:\  \        \:\  \
    \::/  /       \:\__\        \:\__\        \:\__\
     \/__/         \/__/         \/__/         \/__/
\e[0m
'
printf "Welcome to CHAP's Email Signature Automation tool \n\n"
printf "Please enter your full name: "
read FULLNAME
printf "Please enter your CHAP position: "
read POSITION
printf "Please enter which year you are in (the number): "
read YEAR
printf "Please enter which program you are in: "
read PROGRAM
printf "Please enter your phone number [xxx-xxx-xxxx]: "
read PHONE_NUMBER
printf "Please enter your McGill email: "
read EMAIL
if [ -z "$FULLNAME" ] || [ -z "$POSITION" ] || [ -z "$YEAR" ] || [ -z "$PROGRAM" ] || [ -z "$PHONE_NUMBER" ] || [ -z "$EMAIL" ]
	then
	printf "Cannot generate signature without all your information. Exiting... \n\n"
	exit 0
fi
printf "Please enter your personal website (if any): "
read PERSONAL_WEBSITE
if  [ -z "$PERSONAL_WEBSITE" ] 
	then
	$PERSONAL_WEBSITE="https://www.instagram.com/chap_mcgill/"
fi

printf "\nHere is your signature: \n\n"
printf '<table cellpadding="0" cellspacing="0" style="vertical-align: -webkit-baseline-middle; font-size: medium; font-family: Arial; padding: 10px"><tbody><tr><td><table cellpadding="0" cellspacing="0" style="vertical-align: -webkit-baseline-middle; font-size: medium; font-family: Arial"><tbody><tr><span color="#EE3836" style="margin: 0px; font-size: 16px; font-weight: bold; color: #EE3836">%s | Chap %s | U%s %s Student</span></tr><tr height="4"></tr><tr><td style="vertical-align: top"><table cellpadding="0" cellspacing="0" style="vertical-align: -webkit-baseline-middle; font-size: medium; font-family: Arial"><tbody><tr height="25" style="vertical-align: middle"><td width="30" style="vertical-align: middle"><table cellpadding="0" cellspacing="0" style="vertical-align: -webkit-baseline-middle; font-size: medium; font-family: Arial"><tbody><tr><td><span style="color: #000000; font-size: 14px; font-weight: bold">Phone:</span></td></tr></tbody></table></td><td style="padding: 0px; padding-left: 8px"><a href="tel:%s" color="#EE3836" style="text-decoration-color: #EE3836; color: #EE3836; font-size: 14px"><span>%s</span></a></td></tr><tr height="25" style="vertical-align: middle"><td width="30" style="vertical-align: middle"><table cellpadding="0" cellspacing="0" style="vertical-align: -webkit-baseline-middle; font-size: medium; font-family: Arial"><tbody><tr><td><span style="color: #000000; font-size: 14px; font-weight: bold">Email:</span></td></tr></tbody></table></td><td style="padding: 0px; padding-left: 8px"><a href="mailto:%s?subject=Inquiry about CHAP" color="#EE3836" style="text-decoration-color: #EE3836; color: #EE3836; font-size: 14px"><span>%s</span></a></td></tr><tr height="25" style="vertical-align: middle"><td width="30" style="vertical-align: middle"><table cellpadding="0" cellspacing="0" style="vertical-align: -webkit-baseline-middle; font-size: medium; font-family: Arial"><tbody><tr><td><span style="color: #000000; font-size: 14px; font-weight: bold">Website:</span></td></tr></tbody></table></td><td style="padding: 0px; padding-left: 8px"><a href="%s" color="#EE3836" style="text-decoration-color: #EE3836; color: #EE3836; font-size: 14px"><span>%s</span></a></td></tr><tr height="10"></tr></tbody></table></td><table cellpadding="0" cellspacing="0" style="vertical-align: -webkit-baseline-middle; font-size: medium; font-family: Arial"><tbody><tr><td><img src="https://i.imgur.com/121dMP2.png" role="presentation" width="175" style="min-width:175px; display: block"></td><td width="20"></td><td style="text-align: center"><table cellpadding="0" cellspacing="0" style="vertical-align: -webkit-baseline-middle; font-size: medium; font-family: Arial; display: inline-block"><tbody><tr style="text-align: center"><td><a href="https://www.instagram.com/chap_mcgill/" color="#6a78d1" style="display: inline-block; padding: 0px"><img src="https://cdn-icons-png.flaticon.com/512/3955/3955024.png" alt="instagram" color="#6a78d1" width="30" height="30" style="min-width: 30px; min-height: 30px; display: block"></a></td><td width="5"></td><td><a href="https://www.facebook.com/Competitive-Hackathons-and-Projects-CHAP-111187208389513/" color="#6a78d1" style="display: inline-block; padding: 0px"><img src="https://cdn-icons-png.flaticon.com/512/145/145802.png" alt="facebook" color="#6a78d1" width="30" height="30" style="min-width: 30px; min-height: 30px; display: block"></a></td><td width="5"></td><td><a href="https://github.com/orgs/chap-organization/teams" color="#6a78d1" style="display: inline-block; padding: 0px"><img src="https://cdn-icons-png.flaticon.com/512/733/733553.png" alt="github" color="#6a78d1" width="30" height="30" style="min-width: 30px; min-height: 30px; display: block"></a></td></tr></tbody></table></td></tr></tbody></table></tr></tbody></table></td></tr></tbody></table>' "$FULLNAME" "$POSITION" "$YEAR" "$PROGRAM" "$PHONE_NUMBER" "$PHONE_NUMBER" "$EMAIL" "$EMAIL" "$PERSONAL_WEBSITE" "$PERSONAL_WEBSITE"
