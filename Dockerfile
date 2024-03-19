FROM ubuntu:22.04

RUN apt-get update - &&\
    apt-get install curl -y
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - &&\
    apt-get install -y nodejs

WORKDIR /app

#COPY package*.json ./
#RUN npm install

COPY . .

#CMD ["npm", "run", "dev"]
ENTRYPOINT ["tail"]
CMD ["-f","/bin/bash"]