#
# cron-jobs for munin
#

MAILTO=root

*/5 * * * *     munin if [ -x /usr/bin/munin-cron ]; then /usr/bin/munin-cron; fi
10 10 * * *     munin if [ -x /usr/share/munin/munin-nagios ]; then /usr/share/munin/munin-nagios --removeok; fi
