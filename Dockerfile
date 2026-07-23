# 1. Imagen base oficial de Node.js en su versión ligera (Alpine)
FROM node:18-alpine

# 2. Crear y definir el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar los archivos donde se definen las librerías/dependencias
COPY package*.json ./

# 4. Instalar las dependencias del proyecto
RUN npm install

# 5. Copiar todo el código fuente del proyecto al contenedor
COPY . .

# 6. Exponer el puerto donde corre tu servidor (ejemplo: 3000 o 5000)
EXPOSE 3000

# 7. Comando para iniciar la aplicación cuando arranque el contenedor
CMD ["npm", "run", "dev"]