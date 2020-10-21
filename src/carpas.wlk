import personas.* 
import marcas.*

class Carpa{
	var property limiteDeGente
	var property tieneBanda
	var property marcaQueVende
	var property genteDentro = []
	
	
	method dejarEntrar(alguien){ return  (self.genteDentro() + alguien.quiereEntrar() <= limiteDeGente 
										and  not alguien.estaBorracho())
											
	}
	method entrarEnLaCarpa(alguien){if ( self.dejarEntrar(alguien)) 
			{ genteDentro.add()}
			else{ self.error("no hay espacio")}	
	}

	method cuantosEbriosEmpedernidos(){ 
			genteDentro.count({ jarras => jarras.capacidad() >= 1 })
	}
	method servirJarra(cap,cerveza){ 
		const jarra = new Jarra(capacidadJarra=cap)
		jarra.llenarCon(cerveza)
	}

} 