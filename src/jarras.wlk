import marcas.*

class Jarra{
	var property marca
	var property litros =0
	
	method contenidoDeAlcohol() = self.litros() * marca.graduacion()
	
	method paisDeOrigen(){
		return marca.paisDeOrigen()
	}


}