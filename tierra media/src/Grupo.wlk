
class Grupo{
	var integrantes
	constructor(unosIntegrantes){
		integrantes = unosIntegrantes
	}
	
	method puedeAtravesar(unaZona){
		return unaZona.dejaPasarA(self)
	}
	method tieneIntegrantesRequeridos(unaRaza,unNivel,unaCantidad){
		return self.cantidadDeIntegrantesRequeridos(unaRaza,unNivel) >= unaCantidad
	}
	method cantidadDeIntegrantesRequeridos(unaRaza,unNivel){
		return integrantes.count{unIntegrante=>unIntegrante.tieneNivelMinimo(unNivel)&&unIntegrante.esDeRaza(unaRaza)}
	}
	method tieneElementosRequeridos(unElemento,unaCantidad){
		return self.cantidadDeElementosRequeridos(unElemento) >= unaCantidad
	}
	method cantidadDeElementosRequeridos(unElemento){
		return integrantes.sum{unIntegrante=>unIntegrante.cuantasVecesTiene(unElemento)}
	}
	method seSienteEnCasaEn(unaRegion,unPorcentaje){
		return unaRegion.porcentajeZonasQuePuedenSerAtravesadasPor(self) > unPorcentaje
	}
	method transitar(unCamino){
		if(unCamino.puedeSerAtravesadoPor(self))
			self.aumentarNivelIntegrantes(unCamino.cantidadDeZonas())
		else
			self.matarIntegrante(self.integranteMasDebil())
	}
	method aumentarNivelIntegrantes(unaCantidad){
		integrantes.forEach{unIntegrante=>unIntegrante.aumentarNivel(unaCantidad)}
	}
	method matarIntegrante(unIntegrante){
		integrantes.remove(unIntegrante)
	}
	method integranteMasDebil(){
		return integrantes.min{unIntegrante=>unIntegrante.nivel()}
	}
}