sudo apt-get update
sudo apt-get install boinc boinctui

# download global_prefs_override
mv global_prefs_override.xml /etc/boinc-client/global_prefs_override.xml
boinccmd --read_global_prefs_override
echo -n GrcPoolPassword: 
read -s password
echo
# Run Command
boinccmd --join_acct_mgr https://www.grcpool.com jonenone $password
#echo Account manager added
boinccmd --set_run_mode always
boinccmd --set_network_mode always

# download restart_script
nohup ./restart_script.sh >log.out &