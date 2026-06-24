# On défini la base du conteneur
FROM python:3.10 
# On défini le répertoire de travail dans le conteneur
WORKDIR /app
# On copy tout le contenu (normalement, on devrait retirer les dossier générés comme __pycache__ et .pytest_cache)
COPY . .
# On build le projet dans le conteneur
RUN pip install -r requirements.txt
# On lance la commande python app.py (pour lancer l'appli)
CMD ["python", "app.py"]    