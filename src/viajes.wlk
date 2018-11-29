
class Viajes {
	var property kilometros = 0
	var property tiempoMax = 0
	var property cantPasajeros = 0
	const property coloresIncompatibles = #{}
	
	method velProm() { return kilometros/tiempoMax }
	method puedeHacerViaje(auto) { 
		 return auto.velMax()> auto.velProm()+10 and 
		 auto.capacidad()>= cantPasajeros and
		 auto.color() != coloresIncompatibles
	}
	
	
	
}
