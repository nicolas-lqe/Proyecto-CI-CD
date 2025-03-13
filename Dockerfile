FROM jenkins/jenkins:latest

WORKDIR /app

# Copiar el script a la imagen
COPY script.sh /app/script.sh

USER root
# Dar permisos de ejecución y ejecutarlo en la construcción
RUN chmod +x /app/script.sh && /app/script.sh

EXPOSE 8080

EXPOSE 50000


