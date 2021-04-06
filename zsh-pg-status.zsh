pg=$(pg_ctl status 2> /dev/null)

if [[ -n $pg ]]; then
  pid=$(echo $pg | rg -o 'PID: \d*')

  if [[ -z $pid ]]; then
    pg_ctl start 1> /dev/null
  fi
fi
