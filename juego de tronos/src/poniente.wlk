
object poniente {
	var casas = #{}
	
	method agregarCasa(unaCasa){
		casas.add(unaCasa)
	}
	
	method casaMasPobre(){
		return casas.min{unaCasa=>unaCasa.patrimonio()}
	}
}