import marcas.*

class Persona{
	var property peso
	var property leGustaMusicaTradi = true
	var property nivelDeAguante
	var property marcasQueLegustan = []
	var property jarrasCompradas = []
	var property paisDeFabricacion = "pais"
		
	method comprarJarra(jarra){jarrasCompradas.add(jarra) }
	method estaBorracho(){  return jarrasCompradas.sum({jarra => jarra.contenidoDeAlcohol() * peso}) > nivelDeAguante}
	method totalDeAlcohol(){return jarrasCompradas.sum({ jarra => jarra.contenidoDeAlcohol() })}
	method leGustaEsaMarca(cerveza){return self.leGustaLaCerveza(cerveza)}
	method quiereEntrar(carpa){ return marcasQueLegustan.contains({  m => carpa.marca()}) and leGustaMusicaTradi   }
	method puedeEntrar(carpa){return self.quiereEntrar(carpa) and carpa.dejarEntrar()}
	method esPatriota(){ return jarrasCompradas.all({ paisDeFabricacion == self.origen() })}
	method origen(){return "pais"}
	method leGustaLaCerveza(cerveza){return true}


}

class Belga inherits Persona{
	override method origen(){return "belgica"}
	override method leGustaLaCerveza(cerveza){ return cerveza.contLupulo() > 4}
}
class Checo inherits Persona{
	override method origen(){return "checoslovaquia"}
	override method leGustaLaCerveza(cerveza){ return (cerveza.graduacion() * 0.8) > 8 }
}
class Aleman inherits Persona{
	override method origen(){return "alemania"}
	override method quiereEntrar(carpa){ return super(carpa) and not carpa.genteDentro().odd ()}
}





