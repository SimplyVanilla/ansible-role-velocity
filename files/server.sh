#!/usr/bin/env bash

set -eo pipefail


start() {
  exec screen -dmS velocity bash -c "${JAVA_HOME}/bin/java -server ${JAVA_OPTS} -jar ${JAR}"
}

stop() {
  screen -p 0 -S velocity -X eval 'stuff "end"\015'

  while screen -list velocity > /dev/null; do
    echo "waiting..."
    sleep 1
  done
}

case "${1}" in
  start)
    start
    ;;

  stop)
    stop
    ;;

  *)
    echo "unknown"
    exit 1
    ;;
esac
