pg=$(pg_ctl status --pgdata=/usr/local/var/postgresql@11 | rg -o 'PID: \d*' 2> /dev/null)

if [[ -z $pg ]]; then
  pg_ctl start --pgdata=/usr/local/var/postgresql@11 1> /dev/null
fi
