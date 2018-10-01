class Locomotora {
	
	var property peso = 20
	var property pesoMaximoQueArrastra = 1000
	var property velocidad = 50
	var vagones = []

	method arrastreUtil() {
		return pesoMaximoQueArrastra - self.pesoDeLosVagones() - self.peso()
	}

	method agregar(vagon) {
		vagones.add(vagon)
	}

	method pesoDeLosVagones() {
		return vagones.sum({ vagon => vagon.peso() })
	}

}
