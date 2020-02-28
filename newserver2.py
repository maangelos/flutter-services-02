from flask import Flask, Response
import json

app = Flask(__name__)

@app.route("/",methods = ['GET',])
def index():
    result = [
        {"nome": "Bento", "cidade": "Rio de Janeiro"},
        {"nome":"Martin","cidade":"Feira de Santana"},
    ]
    return Response(json.dumps(result),mimetype='application/json')

if __name__ == '__main__':
    app.run(host='0.0.0.0')