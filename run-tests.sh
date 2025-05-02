#!/bin/sh

echo "Starting tests..."

# Lancer nginx en arrière-plan
nginx

# Attendre que nginx démarre
sleep 2

# Test de connexion
curl --fail http://localhost:80 || exit 1

# Vérifier l'existence du fichier
if [ -f /usr/share/nginx/html/index.html ]; then
  echo "Tests passed!"
  exit 0
else
  echo "Tests failed."
  exit 1
fi
