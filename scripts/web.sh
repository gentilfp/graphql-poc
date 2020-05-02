#!/bin/sh
set -e

echo "starting PUMA"
bundle exec puma -C config/puma.rb
