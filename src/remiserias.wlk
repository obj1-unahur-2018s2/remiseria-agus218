class Remiseria {
	
	var property flota = []
	
	method agregarAFlota(vehiculo) { flota.add(vehiculo) }
	method quitarDeFlota(vehiculo) { flota.remove(vehiculo) }
	method pesoTotalFlota() { 
		flota.sum( {vehiculo => vehiculo.peso()} )
	}
	method esRecomendable() { return flota.size() >= 3 and 
		flota.all({ vehiculo => vehiculo.velMax()>=100 })
	}
	method capacidadTotalYendoA(velocidad) {
		flota.filter({vehiculo => vehiculo.velMax()>= velocidad})
		.sum({ vehiculo => vehiculo.capacidad() })
	}
	method colorDelAutoMasRapido() {
		flota.max({ vehiculo => vehiculo.velMax()}).color()
	}
	
}
