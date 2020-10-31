import jarras.*
import marcas.*
import carpas.*


class Persona{
	var property peso
	var property leGustaMusicaTradi = true
	var property nivelDeAguante
	var property jarrasCompradas = []
	var property paisDelQueProviene
	
	method comprarJarra(jarra){jarrasCompradas.add(jarra) }
	
	method alcoholConsumido()= jarrasCompradas.sum({ jarra => jarra.contenidoDeAlcohol()})
	
	method estaEbrio() = self.alcoholConsumido() * peso > nivelDeAguante
	
	method leGusta(cerveza) = true
	
	method quiereEntrar(carpa) = self.leGusta(carpa.marcaQueVende()) and (self.leGustaMusicaTradi() == carpa.tieneBanda()) 
	
	method puedeEntrar(carpa) = self.quiereEntrar(carpa) and carpa.dejaIngresar(self)
	
	method ebrioEmpedernido() = jarrasCompradas.all({ jarras => jarras.litros() > 1})
	
	method esPatriota() = jarrasCompradas.all({jarras => jarras.marca().paisDeOrigen() == self.paisDelQueProviene() })
	
	method marcasCompradas() = jarrasCompradas.map({ jarras => jarras.marca() }).asSet()
	
	method sonCompatibles(persona) = self.marcasCompradas().intersection(persona.marcasCompradas()).size() >
										self.marcasCompradas().union(persona.marcasCompradas()).size()
	
}

class Belga inherits Persona{
	
	override method leGusta(cerveza) = cerveza.lupulo() > 4
}
class Checo inherits Persona{
	
	override method leGusta(cerveza) = cerveza.graduacion() * 0.8 > 8 
}
class Aleman inherits Persona{
	
	override method quiereEntrar(carpa) = super(carpa) and carpa.cantidadDeGenteDentro().even() 
}

	