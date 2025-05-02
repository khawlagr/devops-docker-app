#!/bin/sh

echo "Starting tests..."

# Vérifie si le serveur est accessible
curl --fail http://localhost:80 || exit 1

# Vérifie si le fichier index.html existe
if [ -f /usr/share/nginx/html/index.html ]; then
  echo "Tests passed!"
  exit 0
else
  echo "Tests failed."
  exit 1
fi
