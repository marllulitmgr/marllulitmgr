
#Ejemplo inseguro (vulnerable a SQL Injection)
#❌ NO recomendado

##Aquí, si alguien escribe admin' OR '1'='1 en el campo de clave, la consulta se manipula y permite acceso sin credenciales válidas.

usuario = input("Usuario: ")
clave = input("Clave: ")

query = f"SELECT * FROM usuarios WHERE nombre = '{usuario}' AND clave = '{clave}'"
cursor.execute(query)


##Ejemplo seguro (parametrizado)

""""
Diferencias clave
Usamos placeholders (%s) en la consulta.

Pasamos los valores como una tupla en cursor.execute().

El conector se encarga de escapar los datos, evitando que el usuario inyecte código SQL malicioso.

"""

import mysql.connector

config = {
    "host": "127.0.0.1",
    "port": "3306",
    "database": "hello_mysql",
    "user": "root",
    "password": "root1234"
}

connection = mysql.connector.connect(**config)
cursor = connection.cursor()

usuario = input("Usuario: ")
clave = input("Clave: ")

# ✅ Consulta parametrizada
query = "SELECT * FROM usuarios WHERE nombre = %s AND clave = %s"
cursor.execute(query, (usuario, clave))

result = cursor.fetchall()
for row in result:
    print(row)

cursor.close()
connection.close()
