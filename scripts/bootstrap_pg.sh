#!/usr/bin/env bash

set -eEoux pipefail

if [[ ! -d $PGDATA ]]; then
  mkdir $PGDATA
  initdb
fi

PORT=43241

postgres \
  -p "$PORT" \
  -c unix_socket_directories="$PGDATA" &
PG_PID=$!
trap "kill $PG_PID" EXIT

sleep 1

if [[ ! -e "$PGDATA/setup_done" ]]; then
  createuser postgres --port "$PORT" -h localhost --createdb --superuser
  touch $PGDATA/setup_done
fi

wait "$PG_PID"
