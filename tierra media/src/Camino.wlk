import tierraMedia.*

class Camino{
	var zonas = []
	constructor(unasZonas){
		zonas=unasZonas
		tierraMedia.agregarCamino(self)
	}
	
	method regionesQueAtraviesa(){
		return zonas.map{unaZona=>unaZona.region()}.asSet()
	}
	method cuantasAtraviesa(){
		return self.regionesQueAtraviesa().size()
	}
	method agregarZona(unaZona){
		if(unaZona.limitaConZona(self.ultimaZona()))
			zonas.add(unaZona)
		else
			self.error("No se puede agregar la zona ya que no limita con la ultima")
	}
	method ultimaZona(){
		return zonas.last()
	}
	method cantidadDeZonas(){
		return zonas.size()
	}
	method puedeSerAtravesadoPor(unGrupo){
		return zonas.all{unaZona=>unaZona.dejaPasarA(unGrupo)}
	}
	method conduceA(unNombreRegion){
		return self.ultimaZona().seLlama(unNombreRegion)
	}
}