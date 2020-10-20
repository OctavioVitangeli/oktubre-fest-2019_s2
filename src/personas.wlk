import marcas.*

class Persona{
	var property peso
	const jarrasCompradas = []
	var property leGustaMusicaTradi = false
	var property nivelDeAguante
	var property  tipoDePersona 
	
	method comprarJarra(jarra){jarrasCompradas.add(jarra) }
	method estaBorracho(){  return jarrasCompradas.sum({jarra => jarra.contenidoDeAlcohol() * peso}) > nivelDeAguante
		}
	method totalDeAlcohol(){return jarrasCompradas.sum({ jarra => jarra.contenidoDeAlcohol() })}
	
	method leGustaEsaMarca(cerveza){return tipoDePersona.leGustaLaCerveza(cerveza)}
}

object belga{
	method leGustaLaCerveza(cerveza){ return cerveza.contLupulo() > 4}
}
object checo {
	method leGustaLaCerveza(cerveza){ return (cerveza.graduacion() * 0.8) > 8 }
}
object alemanes{
	method leGustaLaCerveza(cerveza){return true}
}





