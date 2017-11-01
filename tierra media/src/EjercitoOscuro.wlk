import Grupo.*

class EjercitoOscuro inherits Grupo{
	override method puedeAtravesar(unaZona){
		return integrantes.all{unIntegrante=>unIntegrante.puedeAtravesar(unaZona)}
	}
}