
class Personaje{
	var casa
	var conyuges = #{}
	var acompaniantes = #{}
	var estaVivo = true
	
	constructor(unaCasa){
		casa = unaCasa
		casa.agregarMiembro(self)
	}
	
	method estaVivo()=estaVivo
	method agregarConyuge(unConyuge){
		conyuges.add(unConyuge)
	}
	
	method puedeCasarseCon(unPersonaje){
		return self.casaPermiteCasamiento(self,unPersonaje) && unPersonaje.casaPermiteCasamiento(unPersonaje,self)
	}
	method casarseCon(unPersonaje){
		if(self.puedeCasarseCon(unPersonaje)){
			self.agregarConyuge(unPersonaje)
			unPersonaje.agregarConyuge(self)
		}
		else
			self.error("No se pueden casar")
	}
	method casaPermiteCasamiento(personajeDeCasa,otroPersonaje){
		return casa.puedenCasarse(personajeDeCasa,otroPersonaje)
	}
	method esSoltero(){
		return conyuges.isEmpty()
	}
	method patrimonio(){
		return casa.patrimonioIndividual()
	}
	method estaSolo(){
		return acompaniantes.isEmpty()
	}
	method aliados(){
		return acompaniantes + conyuges + casa.miembros()
	}
	method patrimonioAliados(){
		return self.aliados().sum{unAliado=>unAliado.patrimonio()}
	}
	method aliadosSumanMasDe(unPatrimonio){
		return self.patrimonioAliados() > unPatrimonio
	}
	method todosSusConyugesSonDeCasaRica(){
		return conyuges.all{unConyuge=>unConyuge.esDeCasaRica()}
	}
	method esDeCasaRica(){
		return casa.esRica()
	}
	method estaAliadoConPeligroso(){
		return self.aliados().any{unAliado=>unAliado.esPeligroso()}
	}
	method esPeligroso(){
		return estaVivo && (self.aliadosSumanMasDe(10000)||self.todosSusConyugesSonDeCasaRica()||self.estaAliadoConPeligroso())
	}
	method tieneComoAliadoA(unPersonaje){
		return self.aliados().contains(unPersonaje)
	}
	method morir(){
		estaVivo = false
	}
	method derrocharFortunaDeCasa(unPorcentaje){
		casa.derrocharFortuna(unPorcentaje)
	}
}