#Image de base nginx, un serveur web très utilisé
FROM nginx:latest

# Copie vos fichiers statiques dans le répertoire par défaut d'NGINX
COPY . /usr/share/nginx/html

# Copie le script d'entrypoint dans l'image
# COPY entrypoint.sh /entrypoint.sh

# Rend le script exécutable
# RUN chmod +x /entrypoint.sh

# Définit le script d'entrypoint
# ENTRYPOINT ["/entrypoint.sh"]

# Expose le port 80 pour servir l'application
EXPOSE 80

# Démarre NGINX
CMD ["nginx", "-g", "daemon off;"]