sudo apt-get update
sudo apt-get install -y boinc boinctui

echo -n GrcPoolPassword: 
read -s password
echo
boinccmd --join_acct_mgr https://www.grcpool.com jonenone $password
boinccmd --set_run_mode always
boinccmd --set_network_mode always
cp -f global_prefs_override.xml /etc/boinc-client/global_prefs_override.xml
boinccmd --read_global_prefs_override

nohup ./restart_boinc.sh >log.out &