#!/system/bin/sh
# JGR_845
MODDIR=${0%/*}

sleep 30

# Disable 
su -c "pm disable com.google.android.gms/.ota.googlezip.net
pm disable" 
su -c "pm disable com.google.android.gms/.ota-cache1.googlezip.net" 
su -c "pm disable com.google.android.gms/.update.execution.InstallationIntentOperation" 
su -c "pm disable com.google.android.gms/.chimera.GmsIntentOperationService" 
su -c "pm disable com.google.android.gms/.chimera.PersistentIntentOperationService" 

# Dot OS Update disable
su -c "pm disable com.google.android.gms/.update.SystemUpdateActivity" 
su -c "pm disable com.google.android.gms/.update.SystemUpdateService" 
su -c "pm disable com.google.android.gms/.update.SystemUpdateService$ActiveReceiver" 
su -c "pm disable com.google.android.gms/.update.SystemUpdateService$Receiver" 
su -c "pm disable com.google.android.gms/.update.Syste mUpdateService$SecretCodeReceiver" 
su -c "pm disable com.google.android.gsf/.update.SystemUpdateActivity" 
su -c "pm disable com.google.android.gsf/.update.SystemUpdatePanoActivity" 
su -c "pm disable com.google.android.gsf/.update.SystemUpdateService" 
su -c "pm disable com.google.android.gsf/.update.SystemUpdateService$Receiver" 
su -c "pm disable com.google.android.gsf/.update.SystemUpdateService$SecretCodeReceiver" 

