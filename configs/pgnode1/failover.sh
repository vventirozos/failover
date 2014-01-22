# this script should do the following 3 things, promote db , copy
# pgbouncer conf to pgbouncer server and restart the service
pg_ctl -D $PGDATA promote
rsync --delete -a -k --perms  /home/vasilis/configs/pgbouncer.ini vasilis@hanzo:/home/vasilis/pgbouncer/
ssh vasilis@hanzo pgbouncer -R -d /home/vasilis/pgbouncer/pgbouncer.ini
#
