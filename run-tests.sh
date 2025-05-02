#!/bin/sh

echo "Starting tests..."

curl --fail http://localhost:80 || exit 1

if [ -f /usr/share/nginx/html/index.html ]; then
  echo "Tests passed!"
  exit 0
else
  echo "Tests failed."
  exit 1
fi
