FROM node:22-alpine

WORKDIR /app

# Install dependencies
COPY package.json package-lock.json* .npmrc* ./
RUN npm install --legacy-peer-deps

# Copy source files
COPY . .

# Build frontend and prepare production
RUN npm run build

ENV NODE_ENV=production
ENV PORT=3000

EXPOSE 3000

CMD ["npm", "start"]
