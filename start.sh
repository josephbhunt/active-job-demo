#!/bin/bash

if [ -f /app/tmp/pids/server.pid ]; then
  rm -rf /app/tmp/pids/server.pid
fi

bundle exec bin/rails s
