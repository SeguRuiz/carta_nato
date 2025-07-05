# Usar la imagen oficial de nginx como base
FROM nginx:alpine

# Copiar el archivo HTML al directorio por defecto de nginx
COPY carta.html /usr/share/nginx/html/index.html

# Copiar la carpeta assets con las imágenes
COPY assets/ /usr/share/nginx/html/assets/

# Exponer el puerto 80
EXPOSE 80

# Comando por defecto para iniciar nginx
CMD ["nginx", "-g", "daemon off;"] 