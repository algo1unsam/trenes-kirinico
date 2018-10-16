class Locomotora {
	
	var property peso = 20
	var property pesoMaximoQueArrastra = 1000
	var property velocidad = 80


	method arrastreUtil() {
		return pesoMaximoQueArrastra - self.peso()
	}


}
