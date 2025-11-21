
FROM nginx:latest

# Supprimer la config par défaut
RUN rm /etc/nginx/conf.d/default.conf

# Ajouter ma config nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copie mon site entier 
COPY /site/ /usr/share/nginx/html/
