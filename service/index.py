from modelos.database import *
database = Database()
class Service:
	
	def create(self):
		return database.create()
	def read(self):
		return database.read()
	def update(self):
		return database.update()
	def delete(self):
		return database.delete()