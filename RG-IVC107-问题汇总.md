## 1. wifi和4g混用的问题，wifi无法获取到ip：
```
diff --git a/device/rockchip/common/init.rockchip.rc b/device/rockchip/common/init.rockchip.rc
index ba3144f..9dd22c9 100644
--- a/device/rockchip/common/init.rockchip.rc
+++ b/device/rockchip/common/init.rockchip.rc
@@ -92,30 +92,30 @@ service wfd /system/bin/wfd
     disabled
     oneshot
 
-#service dhcpcd_wlan0 /system/bin/dhcpcd -aABDKL
-#    class main
-#    disabled
-#    oneshot
-#
-#service dhcpcd_p2p /system/bin/dhcpcd -aABKL
-#    class main
-#    disabled
-#    oneshot
-#
-#service dhcpcd_bt-pan /system/bin/dhcpcd -aABDKL
-#    class main
-#    disabled
-#    oneshot
+service dhcpcd_wlan0 /system/bin/dhcpcd -aABDKL
+    class main
+    disabled
+    oneshot
+
+service dhcpcd_p2p /system/bin/dhcpcd -aABKL
+    class main
+    disabled
+    oneshot
+
+service dhcpcd_bt-pan /system/bin/dhcpcd -aABDKL
+    class main
+    disabled
+    oneshot
 
 service dhcpcd_eth0 /system/bin/dhcpcd -aABDKL
     class late_start
     disabled
     oneshot
 
-#service iprenew_wlan0 /system/bin/dhcpcd -n
-#    class main
-#    disabled
-#    oneshot
+service iprenew_wlan0 /system/bin/dhcpcd -n
+    class main
+    disabled
+    oneshot
 
 service iprenew_eth0 /system/bin/dhcpcd -n
     class late_start
@@ -126,15 +126,15 @@ service iprenew_eth0 /system/bin/dhcpcd -n
 #    class core
 #     seclabel u:r:watchdog:s0
 
-#service iprenew_p2p /system/bin/dhcpcd -n
-#    class main
-#    disabled
-#    oneshot
-#
-#service iprenew_bt-pan /system/bin/dhcpcd -n
-#    class main
-#    disabled
-#    oneshot
+service iprenew_p2p /system/bin/dhcpcd -n
+    class main
+    disabled
+    oneshot
+
+service iprenew_bt-pan /system/bin/dhcpcd -n
+    class main
+    disabled
+    oneshot
 
 # $_rbox_$_modify_$_lly: added 2015-03-10, for adding the mass storage supporting.
 on property:ro.target.product=box
 ```
 
## 2. 串口没有读写权限的问题：
```
diff --git a/device/rockchip/common/init.connectivity.rc b/device/rockchip/common/init.connectivity.rc
index 4957cdb..0ef24c8 100755
--- a/device/rockchip/common/init.connectivity.rc
+++ b/device/rockchip/common/init.connectivity.rc

# bluetooth power up/down interface
-    chmod 0660 /dev/ttyS0
-    chmod 0660 /dev/ttyS1
+    chmod 0666 /dev/ttyS0
+    chmod 0666 /dev/ttyS1
     chmod 0660 /dev/vflash
     chown bluetooth net_bt_stack /dev/vflash
-    chown bluetooth net_bt_stack /dev/ttyS1
-    chown bluetooth net_bt_stack /dev/ttyS0
+#    chown bluetooth net_bt_stack /dev/ttyS1
+#    chown bluetooth net_bt_stack /dev/ttyS0
```
 
 
 
 
