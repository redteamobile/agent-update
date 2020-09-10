###### adb push shell for installing targets ######

#!/bin/bash -e

rm -rf /etc/rc5.d/S99start_redtea_app
rm -rf /etc/init.d/start_redtea_app
rm -rf /etc/init.d/start_redtea_keep
rm -rf /usr/bin/agent

cp ./app_targets/*agent* /usr/bin/rt_agent
chmod +x /usr/bin/rt_agent

cp ./app_targets/*monitor* /usr/bin/rt_monitor
chmod +x /usr/bin/rt_monitor

cp ./app_targets/*libcomm.so* /usr/lib/libcomm.so
chmod +x /usr/lib/libcomm.so

if [ -e ./app_targets/rt_share_profile.der ]; then
cp ./app_targets/*rt_share_profile.der* /data/redtea/rt_share_profile.der
chmod +x /data/redtea/rt_share_profile.der
fi

cp ./app_targets/*libskb.so* /usr/lib/libskb.so
chmod +x /usr/lib/libskb.so

cp ./app_shells/start_redtea_app /etc/init.d/start_redtea_app
chmod +x /etc/init.d/start_redtea_app

cp ./app_shells/start_redtea_keep /etc/init.d/start_redtea_keep
chmod +x /etc/init.d/start_redtea_keep

if [ -e ./app_targets/test_lpa ]; then
cp ./app_targets/test_lpa /data/redtea/test_lpa
chmod +x /data/redtea/test_lpa
fi

rm -rf /etc/rc5.d/S99start_redtea_app
ln -s /etc/init.d/start_redtea_app /etc/rc5.d/S99start_redtea_app
