# Imagen base Ubuntu 18.04 + node.js Versión 10
FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

# Establecer directorio de trabajo
WORKDIR /opt/app

# Copiar archivos
COPY . .

RUN npm install --only=production

# Indicar el puerto de trabajo
EXPOSE 8888

# Ejecutar la aplicación
CMD ["npm", "start"]

