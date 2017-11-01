
class Conspiracion {
	var objetivo
	var complotados
	var fueEjecutada = false
	
	constructor(unObjetivo,unosComplotados){
		if(unObjetivo.esPeligroso()){
			objetivo = unObjetivo
			complotados = unosComplotados
		}
		else
			self.error("No se puede complotar contra alguien no peligroso")
	}
	
	method cuantosTraidores(){
		return complotados.count{unComplotado=>objetivo.tieneComoAliadoA(unComplotado)}
	}
	method ejecutar(){
		complotados.forEach{unComplotado=>unComplotado.ejecutarAccionCotra(objetivo)}
		fueEjecutada = true
	}
	method objetivoCumplido(){
		return fueEjecutada && !objetivo.esPeligroso()
	}
	
}