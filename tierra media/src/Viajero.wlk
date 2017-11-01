
class Viajero{
	var raza
	var nivel
	var elementos = []
	
	constructor(unaRaza,unNivel,unosElementos){
		raza = unaRaza
		nivel = unNivel
		elementos = unosElementos
	}
	
	method nivel() = nivel
	
	method esDeRaza(unaRaza){
		return raza == unaRaza
	}
	method tieneNivelMinimo(unNivel){
		return nivel >= unNivel
	}
	method cuantasVecesTiene(unElemento){
		return elementos.occurrencesOf(unElemento)
	}
	method aumentarNivel(unaCantidad){
		nivel+=unaCantidad
	}
}

class Orco inherits Viajero{
	constructor(unNivel,unosElementos)=super("Orco",unNivel,unosElementos)
}

class Catapulta inherits Viajero{
	constructor()=super("Catapulta",null,null)
	
	method puedeAtravesar(unaZona){
		return !unaZona.esPantanosa()
	}
}

class Nazgul inherits Viajero{
	constructor()=super("Nazgul",null,null)
	
	method puedeAtravesar(unaZona){
		return true
	}
}