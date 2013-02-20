#Build memo

1.CMのダウンロード

　$ repo init -u git://github.com/CyanogenMod/android.git -b ics
　※-b jearrybean で作成出来るのがベスト
　$ repo sync

2.デバイスファイルの用意

　https://github.com/caplio/android_device_htc_dlxj.git<BR>を
　git cloneしてdevice/htc/dlxj として配置。

3.TWRPをコピー

　https://github.com/TeamWin/Team-Win-Recovery-Project/ の内容で<BR>
　bootable/recovery/ 以下を置き換える。

4.build twrp

   以下を実行してbuild開始

   $ . ./build/envsetup.sh  
   $ lunch cm_dlxj-eng  
   $ make -j3 recoveryimage  
　　  
　　  
X. cleanは

   $ make clobber

