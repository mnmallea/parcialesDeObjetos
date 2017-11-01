import poniente.*

class Casa {
	var patrimonio
	var ciudad
	var miembros = #{}
	
  constructor(unPatrimonio,unaCiudad){
		patrimonio = unPatrimonio
		ciudad = unaCiudad
		poniente.agregarCasa(self)
	}
	
	method miembros()=miembros
	method patrimonio() = patrimonio
	
	method agregarMiembro(unMiembro){
		miembros.add(unMiembro)
	}
	method esRica(){
		return patrimonio >1000
	}
	method perteneceALaCasa(unPersonaje){
		return miembros.contains(unPersonaje)
	}
	method patrimonioIndividual(){
		return patrimonio / self.cantidadDeMiembros()
	}
	method cantidadDeMiembros(){
		return miembros.size()
	}
	method puedenCasarse(personajeDeCasa,otroPersonaje)
	method derrocharFortuna(unPorcentaje){
		patrimonio -= patrimonio * unPorcentaje / 100
	}
	
	method algunIntegranteVivoYSoltero(){
		return self.integrantesVivosYSolteros().anyOne()
	}
	method integrantesVivosYSolteros(){
		return miembros.filter{unIntegrante=> unIntegrante.estaVivo() && unIntegrante.esSoltero()}
	}
}

object casaLannister inherits Casa(10000,"springfield"){
	override method puedenCasarse(personajeDeCasa,otroPersonaje){
		return personajeDeCasa.esSoltero()
	}
}

object casaStark inherits Casa(0,"k"){
	override method puedenCasarse(personajeDeCasa,otroPersonaje){
		return !self.perteneceALaCasa(otroPersonaje)
	}
}

object casaGuardiaDeLaNoche inherits Casa(900,"ciudadDelCabo"){
	override method puedenCasarse(personajeDeCasa,otroPersonaje){
		return false
	}
}