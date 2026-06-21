# Stage 1: Build Stage
FROM node:19-alpine AS builder

WORKDIR /usr/app

COPY package*.json ./

RUN npm install

COPY src ./

# Stage 2: Production Stage
FROM node:19-alpine

WORKDIR /usr/app

COPY --from=builder /usr/app/package*.json ./
COPY --from=builder /usr/app/node_modules ./node_modules
COPY --from=builder /usr/app ./

EXPOSE 3000

CMD ["node", "server.js"]
