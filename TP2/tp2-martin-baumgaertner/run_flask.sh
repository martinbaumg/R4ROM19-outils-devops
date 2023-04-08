#!/bin/bash

# Martin Baumgaertner

# 1- Crée des répertoires temporaires pour stocker les fichiers du site Web
tempdir=$(mktemp -d)

# 2- Copie les répertoires du site Web et flask_app.py dans le répertoire temporaire
cp -r Flask_app/* $tempdir/

# 3- Crée un Dockerfile dans le répertoire temporaire
echo "FROM python:3.9" >> $tempdir/Dockerfile
echo "RUN pip install Flask" >> $tempdir/Dockerfile
echo "COPY flask_app.py /home/myapp/" >> $tempdir/Dockerfile
echo "COPY templates/index.html /home/myapp/templates/" >> $tempdir/Dockerfile
echo "COPY static/style.css /home/myapp/static/" >> $tempdir/Dockerfile
echo "WORKDIR /home/myapp" >> $tempdir/Dockerfile
echo "EXPOSE 8080" >> $tempdir/Dockerfile
echo "CMD [\"python\", \"flask_app.py\"]" >> $tempdir/Dockerfile

# 4- Crée l'image Docker
cd $tempdir
docker build -t tp2_baumgaertner-martin .

# 5- Démarre le conteneur Docker
docker run -d --name run_tp2_baumgaertner-martin -p 8080:8080 tp2_baumgaertner-martin

# 6- Vérifie que le conteneur est en cours d'exécution
docker ps -a
