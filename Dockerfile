# Étape 1 : Construction de l'image de base avec Node.js
FROM node:18 AS builder

# Définir le répertoire de travail dans l'image
WORKDIR ./
COPY package*.json ./
COPY . .

# Installer les dépendances du projet
RUN npm install

# Construire le projet Next.js
RUN npm run build

# Exposer le port sur lequel l'application va écouter
EXPOSE 3000

# Définir la commande pour lancer l'application Next.js
CMD ["npm", "run", "start"]