FROM nginx:alpine

# Copier le fichier HTML dans le conteneur
COPY web-content/index.html /usr/share/nginx/html/index.html

# Copier le script de test dans le conteneur
COPY run-tests.sh /run-tests.sh

# Rendre le script exécutable
RUN chmod +x /run-tests.sh

# Exposer le port 80 pour le serveur web
EXPOSE 80
