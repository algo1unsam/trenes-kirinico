class VagonPasajero {
	var property cantidadBano = 2
	var property largo = 25
	var property ancho = 10


	method cantidadPasajeros() {
		if (ancho <= 2.5) {
			return largo * 8
		} else {
			return largo * 10
		}
	}

	method peso() {
		return self.cantidadPasajeros() + 160
	}

}

class VagonCarga {
	var property cantidadBano = 0
	var property cargaMaxima = 50

	method peso() {
		return self.cantidadPasajeros() + self.cargaMaxima() + 160
	}

	method cantidadPasajeros() {
		return 2
	}

}
