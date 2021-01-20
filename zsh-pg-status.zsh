pg=$(pg_ctl status --pgdata=/usr/local/var/postgresql 2> /dev/null)

if [[ -n $pg ]]; then
  pid=$(echo $pg | rg -o 'PID: \d*')

  if [[ -z $pid ]]; then
    pg_ctl start --pgdata=/usr/local/var/postgresql 1> /dev/null
  fi
fi
