import viajes.*

class Remiseria {
	
	var property flota = []
	
	method agregarAFlota(vehiculo) { flota.add(vehiculo) }
	method quitarDeFlota(vehiculo) { flota.remove(vehiculo) }
	method pesoTotalFlota() { return
		flota.sum( {vehiculo => vehiculo.peso()} )
	}
	method esRecomendable() { return flota.size() >= 3 and 
		flota.all({ vehiculo => vehiculo.velMax()>=100 })
	}
	method capacidadTotalYendoA(velocidad) {
		return flota.filter({vehiculo => vehiculo.velMax()>= velocidad})
		.sum({ vehiculo => vehiculo.capacidad() })
	}
	method colorDelAutoMasRapido() {
		return flota.max({ vehiculo => vehiculo.velMax()}).color()
	}
	method quienesPuedenHacerViaje() {
		return flota.filter({vehiculo => vehiculo.puedeHacerViaje()})
	}
	
	method registrarViaje(auto, remiseria) {}
	
	
	/*
	 * Agregar el registro de los viajes hechos por cada remisería. Para esto, agregarle a la clase que 
	 * define el comportamiento de las remiserías, el método registrarViaje(viaje,auto), 
	 * que agregue el viaje a una colección de viajes hechos, y le asigne el auto al viaje. 
	 * Agregarle al viaje un atributo que sea el auto que lo hizo. Nota: no conviene que sea el auto 
	 * quien se acuerde de los viajes que hizo, porque si un auto trabaja con dos remiserías, se complica 
	 * distinguir qué viajes hizo con cada una.
	 */
}
