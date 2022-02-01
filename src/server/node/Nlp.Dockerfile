FROM node:12.16-alpine
WORKDIR "/app"
COPY . .
WORKDIR "/app/shared"
RUN npm install
WORKDIR "/app/nlp"
RUN npm ci
RUN npm run build
CMD ["npm", "run", "start"]
