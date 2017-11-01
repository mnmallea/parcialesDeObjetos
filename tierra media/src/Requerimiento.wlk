
class RequerimientoDeIntegrante{
	var razaRequerida
	var nivelMinimo
	var cantidadRequerida
	
	constructor(unaRaza,unNivel,unaCantidad){
		razaRequerida = unaRaza
		nivelMinimo = unNivel
		cantidadRequerida = unaCantidad
	}
	
	method esCumplidoPor(unGrupo){
		unGrupo.tieneIntegrantesRequeridos(unaRaza,unNivel,unaCantidad)
	}
}

class RequerimientoDeElemento{
	var elementoRequerido
	var cantidadRequerida
	
	constructor(unElemento,unaCantidad){
		elementoRequerido = unElemento
		cantidadRequerida = unaCantidad
	}
	
	method esCumplidoPor(unGrupo){
		unGrupo.tieneElementosRequeridos(unElemento,unaCantidad)
	}
}