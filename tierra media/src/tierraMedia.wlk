
object tierraMedia{
	var regiones = #{}
	var caminos = #{}
	
	method todosLosCaminosConducenAMordor(){
		return caminos.all{unCamino=>unCamino.conduceA("Mordor")}
	}
	method agregarRegion(unaRegion){
		regiones.add(unaRegion)
	}
	method agregarCamino(unCamino){
		caminos.add(unCamino)
	}
}