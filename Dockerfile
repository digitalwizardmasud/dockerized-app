FROM node:22-alpine3.20

# Remove sensitive data from ENV
# These should be passed at runtime or through secure methods
# like Docker secrets or environment files

WORKDIR /dockerapp
COPY . .

RUN npm install

CMD [ "node", "server.js" ]