#!/bin/bash

cat <<EOF
web:
  build: .
  command: bundle exec rails s -b 0.0.0.0 -p 3000
  working_dir: /usr/src/app
  volumes:
    - .:/usr/src/app
  ports:
    - 3000:3000
  environment:
    BUNDLE_APP_CONFIG: /usr/src/app/.bundle
  links:
    - db
  stdin_open: true
  tty: true
  user: $(id -u -n)

db:
  image: postgres:9.4
  ports:
    - 5432:5432
EOF
