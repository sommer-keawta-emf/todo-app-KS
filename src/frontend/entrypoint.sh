#!/bin/sh
echo "Récupération de l'IP publique..."
PUBLIC_IP=$(curl -s https://api64.ipify.org)
export API_POINT_URL="http://$PUBLIC_IP:8080/api/tasks"

echo "L'IP publique courante est : $PUBLIC_IP"

echo "Mise à jour du fichier app.js..."
sed -i "s|\${API_POINT_URL}|$API_POINT_URL|g" /usr/share/nginx/html/app.js

echo "Démarrage du frontend..."
exec "$@"