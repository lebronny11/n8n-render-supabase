# Pobieramy oficjalny obraz n8n
FROM n8nio/n8n:latest

# Ustawiamy port, na którym n8n będzie nasłuchiwać
EXPOSE 5678

# Domyślne polecenie uruchomienia
CMD ["n8n"]
