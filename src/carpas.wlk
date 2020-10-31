import jarras.*
import marcas.*
import personass.*
class Carpa{
	var property limiteDeGente
	var property tieneBanda = true
	var property marcaQueVende
	var property genteDentro = []
	
	method dejaIngresar(persona) = limiteDeGente > self.cantidadDeGenteDentro() and not persona.estaEbrio()
	
	method cantidadDeGenteDentro() = genteDentro.size()
	
	method ingresarCarpa(persona){
		if(persona.puedeEntrar(self))
		{genteDentro.add(persona)}
		else 
		{self.error("no hay espacio")}
	}
		
	method servirJarra(capacidad, persona){
		
		if(genteDentro.contains(persona))
		{const jarra = new Jarra(litros=capacidad,marca=self.marcaQueVende())
		persona.comprarJarra(jarra)	}
		else
		{self.error("no esta en la carpa")}
	}
	method ebriosEmpedernidos() = genteDentro.count({ personas => personas.ebrioEmpedernido()})
	
	method esHomogenea() = genteDentro.all({ personas => personas.paisDelQueProviene() == personas.paisDelQueProviene()})
	
	
}
	