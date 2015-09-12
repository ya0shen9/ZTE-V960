echo "Custom config: system property config!"

SYSTEM_PROPERTY_PATH_SOURCE=$1/build.prop
SYSTEM_PROPERTY_PATH_DESTINATION=$CUSTOM_CONFIG_SRC_PATH/custom_config/system/build.prop

if [ -z "$1" ]; then
echo "variable TARGET_OUT is null, quit"
else
if [ -z "$CUSTOM_CONFIG_SRC_PATH" ]; then
echo "variable CUSTOM_CONFIG_SRC_PATH is null,quit" 
else

cp -fr $SYSTEM_PROPERTY_PATH_SOURCE $SYSTEM_PROPERTY_PATH_DESTINATION
#sed -i 's/^ro.config.ringtone=.*$/ro.config.ringtone=Movistar_Mid_192Kbps.mp3/g' $SYSTEM_PROPERTY_PATH_DESTINATION
#sed -i 's/^ro.config.notification_sound=.*$/ro.config.notification_sound=OnTheHunt.ogg/g' $SYSTEM_PROPERTY_PATH_DESTINATION
sed -i 's/^persist.sys.timezone=.*$/persist.sys.timezone=Asia\/Shanghai/g' $SYSTEM_PROPERTY_PATH_DESTINATION
sed -i 's/^ro.product.locale.language=.*$/ro.product.locale.language=zh/g' $SYSTEM_PROPERTY_PATH_DESTINATION
sed -i 's/^ro.product.locale.region=.*$/ro.product.locale.region=CN/g' $SYSTEM_PROPERTY_PATH_DESTINATION
fi
fi
