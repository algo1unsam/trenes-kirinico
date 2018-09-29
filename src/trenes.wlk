class Formacion {

	var locomotoras = []
	var vagones = []

	method totalPasajeros() {
		return vagones.sum({ vagon => vagon.cantidadPasajeros() })
	}

	method agragar(vagon) {
		vagones.add(vagon)
	}

	method vagonesLivianos() {
		return vagones.filter({ vagon => vagon.peso() < 2500 })
	// punto1
	}

	method cantidadDeVagonesLiviano() {
		return self.vagonesLivianos().size()
	// punto1
	}

	method velocidadMaxima() {
		return (locomotoras.sum({ locomotora => locomotora.velocidad() })) / locomotora.size()
	}

	method esEficiente() {
		return locomotoras.any({ locomotora => locomotora.pesoDeLosVagones() > (locomotora.pesoDeLosVagones() * 5) })
	}
	
	method puedeMoverse(){
		return self.sumatoriaDeArrastre()> self.sumatoriaDePeso()
	}
	
	method sumatoriaDeArrastre(){
		return locomotoras.sum({locomotora => locomotora.arrastreUtil()})
	}
	
	method sumatoriaDePeso(){
		return vagones.sum({vagon => vagon.peso()})
	}
}

class Locomotora {

	var property peso = 20
	var property pesoMaximoQueArrastra = 1000
	var property velocidad = 50
	var vagones = []

	method arrastreUtil() {
		return  pesoMaximoQueArrastra - self.pesoDeLosVagones() - self.peso()
	}

	method agregar(vagon) {
		vagones.add(vagon)
	}

	method pesoDeLosVagones() {
		return vagones.sum({ vagon => vagon.peso() })
	}

}

class VagonPasajero {

	var property largo = 50
	var property ancho = 20

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

	var property cargaMaxima = 50

	method peso() {
		return self.cantidadPasajeros() + self.cargaMaxima() + 160
	}

	method cantidadPasajeros() {
		return 2
	}

}

class Deposito {

	var formaciones = []
	var locomotorasSueltas = []

}

