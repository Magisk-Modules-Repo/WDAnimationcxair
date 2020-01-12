#Boot Animation Switcher for supported android devices.
#Script written by Mikesew1320
#Contact me on Telegram, GitHub, XDA or Hovatek using my username.
#Script written in Jimma, Ethiopia
#Copyright FridayJanuary 11, 2020

MODEL=`getprop ro.product.model`
RELEASE=`getprop ro.build.version.release`
BRAND=$(getprop ro.product.brand | tr '[:lower:]' '[:upper:]')
DEVICE=`getprop ro.product.name`
BUILD=`getprop ro.build.display.id`
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
ui_print "  CPU ABI         : Arm64-v8a"
ui_print "  ANDROID VERSION : "$RELEASE
ui_print "  SDK             : "$API
ui_print " "

if $BOOTMODE; then
  ui_print " MAGISK MANAGER INSTALLATION DETECTED! "
else
  ui_print " CUSTOM RECOVERY INSTALLATION DETECTED! "
fi
case $DEVICE in 
  "H3713"|"pine"|"a5y17lte"|"aosp_harpia"|"lineage_harpia") ui_print " SUPPORTED DEVICE DETECTED! ";;
  *) abort "  => '"$DEVICE"' is not supported!";;
esac
if [ $RELEASE == "7.0" ] || [ $DEVICE == "lineage_harpia" ] ||  [ $DEVICE == "aosp_harpia" ] || [ $DEVICE == "TECNO" ]; then
if [ $DEVICE == "H3713" ]; then 
ui_print " "
ui_print "Start installing boot animation on TECNO Camon CX Air... "
if [ $DEVICE == "aosp_harpia" ] || [ $DEVICE == "lineage_harpia" ] ; then 
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
    else
  ui_print "                 WATCHDOGS-v2 BOOTANIMATION                  "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
if $VKSEL; then                
    mkdir -p $UNITY/system/media
    cp_ch $TMPDIR/Bootanimations/bootanimation2.zip $UNITY/system/media/bootanimation.zip
    cp_ch $TMPDIR/Bootanimations/bootanimation2.zip $UNITY/system/media/shutanimation.zip
    else
  ui_print "                 WATCHDOGS-v3 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation3.zip $UNITY/system/media/bootanimation.zip
  cp_ch $TMPDIR/Bootanimations/bootanimation3.zip $UNITY/system/media/shutanimation.zip
  else
  ui_print "          RESURRECTION REMIX OREO-V1 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation4.zip $UNITY/system/media/bootanimation.zip
  cp_ch $TMPDIR/Bootanimations/bootanimation4.zip $UNITY/system/media/shutanimation.zip
  else
    ui_print "          RESURRECTION REMIX OREO-V2 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation5.zip $UNITY/system/media/bootanimation.zip
  cp_ch $TMPDIR/Bootanimations/bootanimation5.zip $UNITY/system/media/shutanimation.zip
  else
    ui_print "            RESURRECTION REMIX PIE BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then
  mkdir -p $UNITY/system/media
  cp_ch $TMPDIR/Bootanimations/bootanimation6.zip $UNITY/system/media/bootanimation.zip
  cp_ch $TMPDIR/Bootanimations/bootanimation6.zip $UNITY/system/media/shutanimation.zip
  if $DEVICE == "H3713" ; then
ui_print " Installing bootanimation on TECNO Camon CX Air..."
 if $BRAND == "Motorola" ; then
 ui_print " Installing bootanimation on Motorola Moto G4 Play..."
fi
fi
fi
fi
fi
fi
fi
fi
fi
if [ $RELEASE == "9" ] && [ $MODEL == "SM-A520F" ];  then
ui_print " "
ui_print "Start installing boot animation on Samsung Galaxy A5 2017... "
  ui_print " "
  ui_print "                 WATCHDOGS-v1 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                "
  ui_print " "
  if $VKSEL; then
    mkdir -p $UNITY/system/media/
    cp_ch $TMPDIR/Bootanimations/bootanimation11.zip $UNITY/system/media/bootanimation.zip
    else
  ui_print "                 WATCHDOGS-v2 BOOTANIMATION                  "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
if $VKSEL; then                
    mkdir -p $UNITY/system/media
    cp_ch $TMPDIR/Bootanimations/bootanimation22.zip $UNITY/system/media/bootanimation.zip
    else
  ui_print "                 WATCHDOGS-v3 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
  if $VKSEL; then                
    mkdir -p $UNITY/system/media
    cp_ch $TMPDIR/Bootanimations/bootanimation33.zip $UNITY/system/media/bootanimation.zip
ui_print "Installing bootanimation on SAMSUNG GALAXY A5 2017..."
  fi
  fi
  fi
  fi
  if [ $RELEASE == "10" ] && [ $MODEL == "Mi A1" ];  then
  ui_print " "
  ui_print "                 WATCHDOGS-v1 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                "
  ui_print " "
  if $VKSEL; then
    mkdir -p $UNITY/system/product/media/
    cp_ch $TMPDIR/Bootanimations/bootanimation11.zip $UNITY/system/product/media/bootanimation.zip
    else
  ui_print "                 WATCHDOGS-v2 BOOTANIMATION                  "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  ui_print " "
if $VKSEL; then                
    mkdir -p $UNITY/system/product/media
    cp_ch $TMPDIR/Bootanimations/bootanimation22.zip $UNITY/system/product/media/bootanimation.zip
    else
  ui_print "                 WATCHDOGS-v3 BOOTANIMATION                 "
  ui_print "         ******************************************         "
  ui_print "                 Vol Up = Yes, Vol Down = No                 "
  if $VKSEL; then                
    mkdir -p $UNITY/system/media
    cp_ch $TMPDIR/Bootanimations/bootanimation33.zip $UNITY/system/product/media/bootanimation.zip
ui_print " Installing bootanimation on Xiaomi Mi A1..."
fi
fi
fi
fi
  ui_print " "
  ui_print "             ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  ui_print " "
  ui_print "          Created by Mikesew1320 @ Hovatek Forum           "
  ui_print " "
  ui_print "  Join my Telegram channel http://t.me/MGStoreEthiopia.....  "
  ui_print " "
  ui_print "                    © January 11-2020 G.C                     "
  ui_print " "
