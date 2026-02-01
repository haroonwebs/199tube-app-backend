FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

# 👇 copy source files
COPY . .

# 👇 now build
RUN npm run build

EXPOSE 8000

CMD ["npm", "start"]
