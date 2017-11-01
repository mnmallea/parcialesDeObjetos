import Zona.*

class Region{
	var zonas = #{}
	var nombre
	
	constructor(unNombre){
		nombre = unNombre
	}
/*	constructor(unasZonas){
		zonas = unasZonas
	}
*/
	method agregarZona(unaZona){
		zonas.add(unaZona)
//		unaZona.region(self)
	}
	method limitaCon(unaRegion){
		return zonas.any{unaZona=>unaZona.limitaConRegion(unaRegion)}
	}
	method cantidadDeZonas(){
		return zonas.size()
	}
	method porcentajeZonasQuePuedenSerAtravesadasPor(unGrupo){
		return self.cantidadDeZonasQuePuedeAtravesar(unGrupo) / self.cantidadDeZonas() *100
	}
	method cantidadDeZonasQuePuedeAtravesar(unGrupo){
		return zonas.count{unaZona=>unaZona.dejaPasarA(unGrupo)}
	}
}