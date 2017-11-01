import Personaje.*
import poniente.*

class Sutil inherits Personaje{
	method ejecutarAccionContra(unPersonaje){
		unPersonaje.casarseCon(poniente.casaMasPobre().algunIntegranteVivoYSoltero())
	}
}

class Asesino inherits Personaje{
	method ejecutarAccionContra(unPersonaje){
		unPersonaje.morir()
	}
}

class AsesinoPrecavido inherits Asesino{
	override method ejecutarAccionContra(unPersonaje){
		if(unPersonaje.estaSolo())
			super(unPersonaje)
	}
}

class Disipado inherits Personaje{
	var porcentaje
	method ejecutarAccionContra(unPersonaje){
		unPersonaje.derrocharFortunaDeCasa(porcentaje)
	}
}

class Miedoso{
	method ejecutarAccionContra(unPersonaje){
		//apoya a la conspiracion pero no hace nada
	}
}