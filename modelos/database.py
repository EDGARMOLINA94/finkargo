import psycopg2
class Database:
	conexion = None
	def __init__(self):
		try:
			credenciales = {
			    "dbname": "postgres",
			    "user": "postgres",
			    "password": "postgres",
			    "host": "localhost",
			    "port": 5432,
			    "options":"-c search_path=dbo,finkargo",
			}
			self.conexion = psycopg2.connect(**credenciales)
		except psycopg2.Error as e:
			print("Ocurrió un error: ", e)
	def create(self):
		record = None
		try:
		    cursor = self.conexion.cursor()
		    cursor.execute("INSERT INTO  usuario VALUES (6,'Edgar Molina',27,'M','edgar_molina_ti@hotmail.com','hola mundo')")
		    self.conexion.commit()
		    
		except psycopg2.Error as e:
		    print("Ocurrió un error: ", e)
		finally:
		    if (self.conexion):
		        cursor.close()
		        self.conexion.close()
		        print("La conexión ha sido cerrada")
		return "El registro se ha creado correctamente"
	def read(self):
		record = None
		try:
		    cursor = self.conexion.cursor()
		    cursor.execute("SELECT * FROM usuario")
		    record = cursor.fetchall()
		    
		except psycopg2.Error as e:
		    print("Ocurrió un error: ", e)
		finally:
		    if (self.conexion):
		        cursor.close()
		        self.conexion.close()
		        print("La conexión ha sido cerrada")
		return record
	def update(self):
		try:
		    cursor = self.conexion.cursor()
		    cursor.execute("UPDATE usuario SET nombre = 'Juan' WHERE id = 1")
		    self.conexion.commit()	    
		except psycopg2.Error as e:
		    print("Ocurrió un error: ", e)
		finally:
		    if (self.conexion):
		        cursor.close()
		        self.conexion.close()
		        print("La conexión ha sido cerrada")
		return "Actualización Satisfactoría"
	def delete(self):
		record = None
		try:
		    cursor = self.conexion.cursor()
		    cursor.execute("DELETE FROM  usuario WHERE id = 1")
		    self.conexion.commit()	    
		except psycopg2.Error as e:
		    print("Ocurrió un error: ", e)
		finally:
		    if (self.conexion):
		        cursor.close()
		        self.conexion.close()
		        print("La conexión ha sido cerrada")
		return "Se ha eliminado un registro"