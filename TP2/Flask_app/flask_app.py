import os

from flask import Flask
from flask import request
from flask import render_template

sample = Flask(__name__)

@sample.route("/")
def main():
    # Remplacez ceci par le chemin du dossier dont vous voulez afficher les fichiers
    folder_path = "../"  
    file_list = os.listdir(folder_path)
    return render_template("index.html", files=file_list)

if __name__ == "__main__":
    sample.run(host="0.0.0.0", port=8080)
