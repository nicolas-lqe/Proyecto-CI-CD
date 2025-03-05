# Usar una imagen base de Node.js versión 14
FROM node:14

WORKDIR /usr/src/app

# Copiar los archivos de dependencias
# Se copian primero para aprovechar la caché de capas de Docker
COPY package*.json ./

COPY script.sh ./ 
RUN chmod +x script.sh 
RUN ./script.sh

RUN npm install


# Copiar el resto del código fuente de la aplicación
COPY . .

EXPOSE 3000

# Arranca la aplicación Node.js
CMD ["node", "app.js"]