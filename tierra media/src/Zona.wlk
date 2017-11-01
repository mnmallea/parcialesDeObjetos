
class Zona{
	var zonasLimitrofes
	var requerimientos
	var region
	
	constructor(unaRegion,unasZonasLimitrofes,unosRequerimientos){
		zonasLimitrofes=unasZonasLimitrofes
		requerimientos = unosRequerimientos
		region = unaRegion
		region.agregarZona(self)
		zonasLimitrofes.forEach{unaZona=>unaZona.agregarZonaLimitrofe(self)}
	}
	
	method region()=region
	method agregarZonaLimitrofe(unaZona){
		zonasLimitrofes.add(unaZona)
	}
	
	method region(unaRegion){
		region = unaRegion
	}
	
	method limitaConRegion(unaRegion){
		return zonasLimitrofes.any{unaZona=>unaZona.perteneceA(unaRegion)}
	}
	method limitaConZona(unaZona){
		return zonasLimitrofes.contains(unaZona)
	}
	method perteneceA(unaRegion){
		return region == unaRegion
	}
	method dejaPasarA(unGrupo){
		return requerimientos.all{unRequerimiento=>unRequerimiento.esCumplidoPor(unGrupo)}
	}
}