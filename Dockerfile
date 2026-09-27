# Valige baasimage
FROM node:24-bookworm-slim
# Määrake töökaust
WORKDIR /
# Kopeerige package.json ja installige sõltuvused
COPY package*.json ./
RUN npm install
# Kopeerige ülejäänud kood
COPY . .
# Määrake port, mida konteiner kuulab
EXPOSE 3000
# Käivituskäsk
CMD ["node", "app.js"]
