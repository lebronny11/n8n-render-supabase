# 1) Bierzemy lekki obraz Node.js
FROM node:18-alpine

# 2) Instalujemy n8n globalnie
RUN npm install -g n8n

# 3) Tworzymy katalog na dane konfiguracji (uprawnienia)
RUN mkdir -p /home/node/.n8n \
    && chown node:node /home/node/.n8n

USER node

# 4) Otwieramy port, na którym n8n będzie nasłuchiwać
EXPOSE 5678

# 5) Uruchamiamy n8n
CMD ["n8n", "start"]
