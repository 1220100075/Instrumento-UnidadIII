
#   Jose Rogelio Torres Garcia
#
#

from flask import Flask, jsonify, request, session, redirect, url_for
import pymysql
app = Flask(__name__)

# Configuración de la aplicación Flask
app.secret_key = 'Unidad3#'  # Clave secreta utilizada para cifrar datos de sesión
app.config['MYSQL_DATABASE_HOST'] = 'localhost'  # Dirección del servidor de base de datos
app.config['MYSQL_DATABASE_USER'] = 'root'  # Usuario de la base de datos
app.config['MYSQL_DATABASE_PASSWORD'] = 'linux123'  # Contraseña del usuario de la base de datos
app.config['MYSQL_DATABASE_DB'] = 'unidad302'  # Nombre de la base de datos

# Conexión a la base de datos MySQL

mysql = pymysql.connect(
    host=app.config['MYSQL_DATABASE_HOST'],
    user=app.config['MYSQL_DATABASE_USER'],
    password=app.config['MYSQL_DATABASE_PASSWORD'],
    db=app.config['MYSQL_DATABASE_DB']
)

@app.route('/login', methods=['POST'])
def login():

    usuario = request.get_json()  # Obtener los datos enviados en la solicitud
    Imail = usuario.get('Imail')  # Obtener el correo
    Contraseña = usuario.get('Contraseña')  # Obtener la contraseña del usuario

    interatuar = mysql.cursor(pymysql.cursors.DictCursor)  # Crear un cursor para interactuar con la base de datos
    interatuar.execute('SELECT * FROM alumnos WHERE Imail = %s', (Imail,))
    alumnos = interatuar.fetchone()  # Obtener los datos del estudiante

    if alumnos:
        contraseña2 = alumnos['Contraseña']  # Obtener la contraseña almacenada

        if contraseña2 == Contraseña:
            session['logged_in'] = True  # Establecer la sesión exitosa
            return {'message': 'La Conexion ES Exitosa'}  # Devolver un mensaje de éxito
        else:
            return {'error': 'Usuario o Contraseña son invalidas'}