from flask import Flask
from flask import request
from flask_httpauth import HTTPBasicAuth
from werkzeug.security import generate_password_hash, check_password_hash
from service.index import *

import json
app = Flask(__name__)
auth = HTTPBasicAuth()
service = Service()
users = {
    "Edgar Molina": generate_password_hash("hola mundo"),
    "Finkargo": generate_password_hash("hola mundo")
}
@auth.verify_password
def verify_password(username, password):
    if username in users and \
            check_password_hash(users.get(username), password):
        return username

@app.route("/calificacion",methods = ['POST', 'GET'])
@auth.login_required
def calificacion():
    sinCalificar = json.loads(request.data)
    order = sorted(sinCalificar["sin clasificar"])
    num = 0
    duplicados = []
    listaNueva = []
    for calificacion in order:
        if num == calificacion:
            duplicados.append(calificacion)
        else:
            listaNueva.append(calificacion)
        
        num = calificacion
    for valores in duplicados:
        listaNueva.append(valores)
    nojson = """
    {
       'sin calificar' : '"""+str(sinCalificar["sin clasificar"])+"""',
       'calificado' : '"""+(str(listaNueva))+"""'
    }
    """
    return str(nojson)

@app.route("/balance",methods = ['POST', 'GET'])
@auth.login_required
def balance():
    jsonRecived = request.data.decode('utf8').replace("'", '"')
    balance = json.loads(jsonRecived)
    balance["Mes"][0]
    balance["Ventas"][0]
    balance["Gastos"][0]
    nojson = """
    {
       'mes' : '"""+balance["Mes"][0]+"""',
       'Ventas' : '"""+str(balance["Ventas"][0])+"""',
       'Gastos' : '"""+str(balance["Gastos"][0])+"""',
       'Balance' : '"""+str((balance["Ventas"][0] - balance["Gastos"][0])*-1)+"""',
    }
    """
    return str(nojson)

@app.route("/create",methods = ['POST', 'GET'])
@auth.login_required
def create():
    return str(service.create())

@app.route("/read",methods = ['POST', 'GET'])
@auth.login_required
def read():
    return str(service.read())


@app.route("/update",methods = ['POST', 'GET'])
@auth.login_required
def update():
    return str(service.update())

@app.route("/delete",methods = ['POST', 'GET'])
@auth.login_required
def delete():
    return str(service.delete())
app.run(host='0.0.0.0')