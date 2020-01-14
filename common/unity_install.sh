#Boot Animation Switcher for supported android devices.
#Script written by Mikesew1320
#Contact me on Telegram, GitHub, XDA or Hovatek using my username.
#Script written in Jimma, Ethiopia
#Copyright FridayJanuary 14, 2020

MODULEDIR="/data/adb/modules_update/$MODID"
MODVER=$(grep_prop version $TMPDIR/module.prop)
ONEPLUS51=`getprop ro.oxygen.version`
ONEPLUS5=`getprop ro.product.device`
MODE=`getprop ro.product.system.device`
MODESS=`getprop ro.product.system.name`
MODEL=`getprop ro.product.model`
RELEASE=`getprop ro.build.version.release`
BRAND=$(getprop ro.product.brand | tr '[:lower:]' '[:upper:]')
DEVICE=`getprop ro.product.name`
BUILD=`getprop ro.build.display.id`
SIZE=$(wm size | sed "s/Physical size: //" )
CHIPSET=$(getprop ro.board.platform | tr '[:lower:]' '[:upper:]')
ui_print " "
ui_print "  Performing device compatibility check..."
ui_print " "
ui_print " PROPERTIES         RESULT"
ui_print "  --------        ----------"
ui_print "  BRAND           : "$BRAND
ui_print "  MODEL           : "$MODEL
ui_print "  CODENAME        : "$DEVICE
ui_print "  BUILD NUMBER    : "$BUILD
ui_print "  CHIPSET         : "$CHIPSET
ui_print "  CPU ABI         : "$ABILONG
ui_print "  ANDROID VERSION : "$RELEASE
ui_print "  SCREEN RESOLU.N : $SIZE"
ui_print "  MODULE VERSION  : "$MODVER
ui_print "  SDK             : "$API
ui_print " "

if $BOOTMODE; then
  ui_print " MAGISK MANAGER INSTALLATION DETECTED! "
else
  ui_print " CUSTOM RECOVERY INSTALLATION DETECTED! "
fi
case $DEVICE in "H3713"| "omni_treble"|"j7velte"|"ONEPLUS5"|"pine"|"FLAME"|"a5y17lte"|"jackpotltexx"|"aosp_harpia"|"lineage_harpia") ui_print " SUPPORTED DEVICE DETECTED! ";;
  *) abort "  => '"$DEVICE"' is not supported!";;
esac
if [ $RELEASE == "7.0" ] || [ $DEVICE == "lineage_harpia" ] ||  [ $DEVICE == "aosp_harpia" ] || [ $DEVICE == "TECNO" ]; then
if [ $DEVICE == "H3713" ]; then 
ui_print " "
ui_print " Start installing boot animation on TECNO Camon CX Air... "
if [ $DEVICE == "aosp_harpia" ] || [ $DEVICE == "lineage_harpia" ] || [ $DEVICE == "j7velte" ] ; then 
ui_print "Start installing boot animation on Motorola Moto G4 Play... "
fi
fi
  ui_print " "
  ui_print "                 WATCHDOGS-v1 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                "
  ui_print " "
  if $VKSEL; then
    mkdir -p $UNITY/system/media/
    cp_ch $TMPDIR/Bootanimations/bootanimation1.zip $UNITY/system/media/bootanimation.zip
    cp_ch $TMPDIR/Bootanimations/bootanimation1.zip $UNITY/system/media/shutanimation.zip
    ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
    else
  ui_print "                 WATCHDOGS-v2 BOOTANIMATION                  "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
if $VKSEL; then                
    mkdir -p $UNITY/system/media
    cp_ch $TMPDIR/Bootanimations/bootanimation2.zip $UNITY/system/media/bootanimation.zip
    cp_ch $TMPDIR/Bootanimations/bootanimation2.zip $UNITY/system/media/shutanimation.zip
    ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
    else
  ui_print "              BOOTLEGGERS V1 BOOT BOOTANIMATION              "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation3.zip $UNITY/system/media/bootanimation.zip
  cp_ch $TMPDIR/Bootanimations/bootanimation3.zip $UNITY/system/media/shutanimation.zip
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  else
  ui_print "                 BOOTLEGGERS V2 BOOT ANIMATION                  "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation7.zip $UNITY/system/media/bootanimation.zip
  cp_ch $TMPDIR/Bootanimations/bootanimation7.zip $UNITY/system/media/shutanimation.zip
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  else
  ui_print "          RESURRECTION REMIX OREO-V1 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation4.zip $UNITY/system/media/bootanimation.zip
  cp_ch $TMPDIR/Bootanimations/bootanimation4.zip $UNITY/system/media/shutanimation.zip
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  else
    ui_print "          RESURRECTION REMIX OREO-V2 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation5.zip $UNITY/system/media/bootanimation.zip
  cp_ch $TMPDIR/Bootanimations/bootanimation5.zip $UNITY/system/media/shutanimation.zip
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  else
  ui_print "            RESURRECTION REMIX PIE BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation6.zip $UNITY/system/media/bootanimation.zip
  cp_ch $TMPDIR/Bootanimations/bootanimation6.zip $UNITY/system/media/shutanimation.zip
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  else
  if [ $DEVICE =="H3713" ] && [ $RELEASE == 7.0]; then
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
fi
 if $BRAND == "Motorola" ; then
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
 fi
 fi
fi
fi
fi
fi
fi
fi
if [ $RELEASE == "9" ] && [ $MODEL == "SM-A520F" ] || [ $DEVICE == "jackpotlte"];  then
ui_print " "
ui_print " Start installing boot animation on Samsung Galaxy A5 2017... "
  ui_print " "
  ui_print "                 WATCHDOGS-v1 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                "
  ui_print " "
  if $VKSEL; then
    mkdir -p $UNITY/system/media/
    cp_ch $TMPDIR/Bootanimations/bootanimation1.zip $UNITY/system/media/bootanimation.zip
    ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
    else
  ui_print "                 WATCHDOGS-v2 BOOTANIMATION                  "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
if $VKSEL; then                
    mkdir -p $UNITY/system/media
    cp_ch $TMPDIR/Bootanimations/bootanimation2.zip $UNITY/system/media/bootanimation.zip
    ui_print "            BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
    else
  ui_print "              BOOTLEGGERS V1 BOOTING BIOS BOOTANIMATION               "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then                
    mkdir -p $UNITY/system/media
    cp_ch $TMPDIR/Bootanimations/bootanimation33.zip $UNITY/system/media/bootanimation.zip
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  ui_print "          RESURRECTION REMIX OREO-V1 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation4.zip $UNITY/system/media/bootanimation.zip
  cp_ch $TMPDIR/Bootanimations/bootanimation4.zip $UNITY/system/media/shutanimation.zip
  ui_print "            BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  else
    ui_print "          RESURRECTION REMIX OREO-V2 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation5.zip $UNITY/system/media/bootanimation.zip
  cp_ch $TMPDIR/Bootanimations/bootanimation5.zip $UNITY/system/media/shutanimation.zip
  ui_print "            BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  else
    ui_print "            RESURRECTION REMIX PIE BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation6.zip $UNITY/system/media/bootanimation.zip
  cp_ch $TMPDIR/Bootanimations/bootanimation6.zip $UNITY/system/media/shutanimation.zip
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  else
  ui_print "                LINUX BOOTING BIOS BOOTANIMATION              "
  ui_print "         ******************************************         "
  ui_print "                          Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation7.zip $UNITY/system/media/bootanimation.zip
  cp_ch $TMPDIR/Bootanimations/bootanimation7.zip $UNITY/system/media/shutanimation.zip
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  fi
  fi
  fi
  fi
  fi
  fi
  fi
  fi
  if [ $RELEASE == "10" ] && [ $MODE == "beryllium" ] || [ $MODESS == "beryllium" ] || [ $DEVICE == "beryllium" ] ;  then
  ui_print " "
  ui_print " Start installing boot animation on Xiaomi POCO F1... "
  ui_print " "
  ui_print "                 WATCHDOGS-v1 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimationPC1.zip $UNITY/system/media/bootanimation.zip
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  else
    ui_print "                 WATCHDOGS-v2 BOOTANIMATION                  "
  ui_print "         ******************************************         "
  ui_print "                Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimationPC2.zip $UNITY/system/media/bootanimation.zip
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  else
  ui_print "             BOOTLEGGERS V1 BOOTANIMATION               "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
    if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimationPC3.zip $UNITY/system/media/bootanimation.zip
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  fi
  fi
  fi
  fi
  if [ $RELEASE == "10" ] || [ $RELEASE == "9"] && [ $ONEPLUS51 == "9.0.4" ] && [ $MODEL == "Mi A1" ] && [ $ONEPLUS5 == "OnePlus5" ] || [$DEVICE == "omni_treble" ];  then
  ui_print " "
  ui_print " Start installing boot animation on OnePlus5... "
  ui_print " "
  ui_print "                 WATCHDOGS-v1 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                "
  ui_print " "
  if $VKSEL; then
    mkdir -p $UNITY/system/product/media/
    cp_ch $TMPDIR/Bootanimations/bootanimation11.zip $UNITY/system/product/media/bootanimation.zip
    ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
    else
    if $RELEASE == "9" ; then
    cp_ch $TMPDIR/Bootanimations/bootanimation11.zip $UNITY/system/media/bootanimation.zip
    ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
    else
  ui_print "                 WATCHDOGS-v2 BOOTANIMATION                  "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
if $VKSEL; then                
    mkdir -p $UNITY/system/product/media
    cp_ch $TMPDIR/Bootanimations/bootanimation22.zip $UNITY/system/product/media/bootanimation.zip
    ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
    else
        if $RELEASE == "9" ; then
    cp_ch $TMPDIR/Bootanimations/bootanimation22.zip $UNITY/system/media/bootanimation.zip
    ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
    else
  ui_print "                 WATCHDOGS-v3 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  if $VKSEL; then                
    mkdir -p $UNITY/system/media
    cp_ch $TMPDIR/Bootanimations/bootanimation33.zip $UNITY/system/product/media/bootanimation.zip
    ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
    else
        if $RELEASE == "9" ; then
    cp_ch $TMPDIR/Bootanimations/bootanimation33.zip $UNITY/system/media/bootanimation.zip
    ui_print "          BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
    else
  ui_print "                BOOTLEGGERS V1 BOOTANIMATION              "
  ui_print "         ******************************************         "
  ui_print "                          Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation33.zip $UNITY/system/media/bootanimation.zip
      if $RELEASE == "9" ; then
    cp_ch $TMPDIR/Bootanimations/bootanimation33.zip $UNITY/system/media/bootanimation.zip
 ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
fi
fi
fi
fi
fi
if [ $RELEASE == "10" ] || [$RELEASE == 9] && [ $DEVICE == "pine" ] || [ $MODESS == "treble_a64_bvN";  then
  ui_print " "
  ui_print "                 WATCHDOGS-v1 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                "
  ui_print " "
  if $VKSEL; then
    mkdir -p $UNITY/system/media/
    cp_ch $TMPDIR/Bootanimations/bootanimation111.zip $UNITY/system/media/bootanimation.zip
    ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
    else
  ui_print "                 WATCHDOGS-v2 BOOTANIMATION                  "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
if $VKSEL; then                
    mkdir -p $UNITY/system/media
    cp_ch $TMPDIR/Bootanimations/bootanimation222.zip $UNITY/system/media/bootanimation.zip
    ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
    else
  ui_print "              LINUX BOOTING BIOS BOOTANIMATION               "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation333.zip $UNITY/system/media/bootanimation.zip
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  fi
  fi
  fi
  fi
  fi
  fi
  fi
  fi
    if [ $RELEASE == "10" ] || [ $DEVICE == "OnePlus6T" ] ;  then
  ui_print " "
  ui_print " Start installing boot animation on Xiaomi POCO F1... "
  ui_print " "
  ui_print "                 WATCHDOGS-v1 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation6T1.zip $UNITY/system/media/bootanimation.zip
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  else
    ui_print "                 WATCHDOGS-v2 BOOTANIMATION                  "
  ui_print "         ******************************************         "
  ui_print "                Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation6T2.zip $UNITY/system/media/bootanimation.zip
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  else
  ui_print "             BOOTLEGGERS V1 BOOTANIMATION               "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
    if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation6T3.zip $UNITY/system/media/bootanimation.zip
  ui_print "           BOOT ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  fi
  fi
  fi
  fi
  ui_print " "
  ui_print " *********************************************************** "
  ui_print " "
  ui_print " Start installing Emoji on your device... "
  ui_print " "
  ui_print "                DO YOU WANT TO INSTALL EMOJI? "
  ui_print " " 
  ui_print "                        JOYPIXEL 4.5               "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/fonts
  cp_ch $TMPDIR/common/Emojis/JoyPixel45.ttf $UNITY/system/fonts/NotoColorEmoji.ttf
  cp_ch $TMPDIR/common/Emojis/WhatsApp21962.ttf $UNITY/system/fonts/SamsungColorEmoji.ttf
  ui_print "                EMOJIS SUCCESSFULLY INSTALLED!             "  
  else
  ui_print "                         ANDROID PIE               "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/fonts
  cp_ch $TMPDIR/common/Emojis/ANDROIDPIE.ttf $UNITY/system/fonts/NotoColorEmoji.ttf
  cp_ch $TMPDIR/common/Emojis/WhatsApp21962.ttf $UNITY/system/fonts/SamsungColorEmoji.ttf
  ui_print "                EMOJIS SUCCESSFULLY INSTALLED!             "  
  else
  ui_print "                           WINDOWS               "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/fonts
  cp_ch $TMPDIR/common/Emojis/Windows.ttf $UNITY/system/fonts/NotoColorEmoji.ttf
  cp_ch $TMPDIR/common/Emojis/WhatsApp21962.ttf $UNITY/system/fonts/SamsungColorEmoji.ttf
  ui_print "                EMOJIS SUCCESSFULLY INSTALLED!             "  
  else
  ui_print "                     WHATSAPP V2.17.62               "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/fonts
  cp_ch $TMPDIR/common/Emojis/Whatsapp21962.ttf $UNITY/system/fonts/NotoColorEmoji.ttf
  cp_ch $TMPDIR/common/Emojis/Whatsapp21962.ttf $UNITY/system/fonts/SamsungColorEmoji.ttf
  ui_print "                EMOJIS SUCCESSFULLY INSTALLED!             "  
  else
  ui_print "                     SAMSUNG ONE UI               "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/fonts
  cp_ch $TMPDIR/common/Emojis/SamsungOneUI.ttf $UNITY/system/fonts/NotoColorEmoji.ttf
  cp_ch $TMPDIR/common/Emojis/SamsungOneUI.ttf $UNITY/system/fonts/SamsungColorEmoji.ttf
  ui_print "                EMOJIS SUCCESSFULLY INSTALLED!             "  
  else
  ui_print "                     TWITTER  V11.3               "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/fonts
  cp_ch $TMPDIR/common/Emojis/Twitter.ttf $UNITY/system/fonts/NotoColorEmoji.ttf
  cp_ch $TMPDIR/common/Emojis/Twitter.ttf $UNITY/system/fonts/SamsungColorEmoji.ttf
  ui_print "                EMOJIS SUCCESSFULLY INSTALLED!             "  
  else
  ui_print "                          IOS 13               "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/fonts
  cp_ch $TMPDIR/common/Emojis/IOS13.ttf $UNITY/system/fonts/NotoColorEmoji.ttf
  cp_ch $TMPDIR/common/Emojis/IOS13.ttf $UNITY/system/fonts/SamsungColorEmoji.ttf
  ui_print "                EMOJIS SUCCESSFULLY INSTALLED!             "  
  else
  ui_print "                         APPPLE               "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/fonts
  cp_ch $TMPDIR/common/Emojis/Apple.ttf $UNITY/system/fonts/NotoColorEmoji.ttf
  cp_ch $TMPDIR/common/Emojis/Apple.ttf $UNITY/system/fonts/SamsungColorEmoji.ttf
  ui_print "                EMOJIS SUCCESSFULLY INSTALLED!             "  
  fi
  fi
  fi
  fi
  fi
  fi
  fi
  fi
  ui_print " "
  ui_print "              Created by Mikesew1320 @ Hovatek Forum           "
  ui_print " "
  ui_print "  Join our Telegram channel http://t.me/MGStoreEthiopia.....  "
  ui_print " "
  ui_print "                    © January 14-2020 G.C                     "
  ui_print " "
  fi