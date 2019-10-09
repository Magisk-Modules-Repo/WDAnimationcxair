MODEL=`getprop ro.product.model`
RELEASE=`getprop ro.build.version.release`
BRAND=`getprop ro.product.brand`
DEVICE=`getprop ro.product.name`
BUILD=`getprop ro.build.display.id`

ui_print " "
ui_print "  Performing device compatibility check..."
ui_print " "
ui_print " PROPERTIES         RESULT"
ui_print "  --------        ----------"
ui_print "  BRAND           : "$BRAND
ui_print "  MODEL           : "$MODEL
ui_print "  CODENAME        : "$DEVICE
ui_print "  BUILD NUMBER    : "$BUILD
ui_print "  CHIPSET         : MT6737M"
ui_print "  CPU ABI         : Arm64-v8a"
ui_print "  ANDROID VERSION : "$RELEASE
ui_print "  SDK             : "$API
ui_print " "

if $BOOTMODE; then
  ui_print " MAGISK MANAGER INSTALLATION DETECTED! "
else
  ui_print " CUSTOM RECOVERY INSTALLATION DETECTED! "
fi
if [ $BRAND = "TECNO" ]; then
  ui_print " SUPPORTED DEVICE DETECTED! "
  ui_print " "
else
  abort "  => '"$BRAND"' devices are not supported"
fi

if [ $DEVICE != "H3713" ]; then
  abort "  => '"$DEVICE"' is not supported!"
fi

if [ $RELEASE != "7.0" ] && [ $RELEASE != "7.0" ]; then
  abort "  => Android version '"$RELEASE"' is not supported"
fi

if [ $RELEASE == "7.0" ]; then
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
fi
fi
fi
fi
ui_print " Installing watchdogs bootanimation on TECNO Camon CX Air..."
ui_print " Installing watchdogs shutanimation on TECNO Camon CX Air..."
  ui_print " "
  ui_print "             ANIMATIONS SUCCESSFULLY INSTALLED!             "  
  ui_print " "
  ui_print "          Created by MIKESEW1320 @ Hovatek Forum           "
  ui_print " "
  ui_print "  Join my Telegram channel http://t.me/MStoreEthiopia.....  "
  ui_print " "
  ui_print "                     © October 9-2019 G.C                     "
  ui_print " "
