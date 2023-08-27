   ARG BASE_IMAGE=node:18
   FROM ${BASE_IMAGE}

    RUN apt-get update \
     && apt-get install default-jre -y \
     && apt-get install default-jdk -y

    RUN mkdir -p /usr/src/app

    WORKDIR /usr/src/app

    COPY package*.json ./

    RUN npm install

    COPY . .

    EXPOSE 3000

    RUN chmod +x ./scripts/prestart.sh

    CMD ["npm", "run", "start"]