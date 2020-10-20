class Cerveza{
	var property graduacion
	var property contLupulo
	var property madeIn
	var property graduacionReglamentaria	
	var property marca

}

class CervezaRubia inherits Cerveza{
}

class CervezaNegra inherits Cerveza{
	
	 override method graduacion(){ return  graduacionReglamentaria.min(contLupulo * 2)}
}

class CervezaRoja inherits CervezaNegra{
	
	override method  graduacion(){return super() * 1.25}
}

class Jarra{
	var property capacidadJarra
	var property contenido = []
	method llenarCon(cerveza){ contenido.add(cerveza)}
	method contenidoDeAlcohol(){
		return self.capacidadJarra() * contenido.sum({c=>c.graduacion()})
	}
}

object corona{}
object guines{}
object holfbrau{}
