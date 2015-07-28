#!/bin/bash

cat <<EOF
FROM ruby:2.2.2

RUN groupadd -g $(id -g) $(id -g -n) 2>/dev/null || exit 0
RUN useradd -m -g $(id -g -n) -u $(id -u) $(id -u -n)
EOF
