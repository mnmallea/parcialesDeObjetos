
class Animal {
	method patrimonio(){
		return 0
	}
}

class Dragon inherits Animal{
	method esPeligroso(){
		return true
	}
}

class Lobo inherits Animal{
	var esHuargo
	constructor(estadoHuargo){
		esHuargo = estadoHuargo
	}
	method esPeligroso(){
		return esHuargo
	}
}