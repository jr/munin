#
# cron-jobs for munin-node
#

MAILTO=root

# If the APT plugin is enabled, update packages databases approx. once
# an hour (12 invokations an hour, 1 in 12 chance that the update will
# happen), but ensure that there will never be more than two hour (7200
# seconds) interval between updates..
*/5 * * * *	root [ -x /etc/munin/plugins/apt ] && /etc/munin/plugins/apt update 7200 12 >/dev/null
