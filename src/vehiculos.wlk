
class Corsa {
	var property color = ""
	
	method capacidad() { return 4 }
	method velMax() { return 150 }
	method peso() { return 1300 }
	
}

class Standard {
	var property color = ""
    var property tanqueAdd = true

	method capacidad() { if (tanqueAdd) {return 3}
		else {return 4}
	}
	method velMax() { if (tanqueAdd) {return 120}
		else {return 110}
	}
	method peso() { if (tanqueAdd) {return 1350} 
		else {return 1200}
	}
	
}



object trafic {
    var property motor = motorBataton
    var property interior = interiorComodo
    
	method color() { return "blanco" }
	method capacidad() { return interior.capacidad() }
	method velMax() { return motor.velMax() }
	method peso() { 
		return 4000 + interior.peso() + motor.peso()
	}
	
	
}

/* cosos de la trafic */
object interiorComodo {
	method capacidad() { return 5 }
	method peso() { return 700 }
}

object interiorPopular {
	method capacidad() { return 12 }
	method peso() { return 1000 }
}

object motorPulenta {
	method velMax() { return 130 }
	method peso() { return 800 }
}

object motorBataton {
	method velMax() { return 80 }
	method peso() { return 500 }
}

/* */

class Distintos {
	var property capacidad = 0
	var property velMax = 0
	var property peso = 0
	var property color = ""
}






