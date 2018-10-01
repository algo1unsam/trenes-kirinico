import vagones.*
import locomotoras.*
class Formacion {

	var locomotoras = []
	var vagones = []

	method totalPasajeros() {
		return vagones.sum({ vagon => vagon.cantidadPasajeros() })
	}

	method agregarLocomotoras(locomotorasN){
		locomotoras.add(locomotorasN)
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

	method sumatoriaDeVelocidades() {
		return (locomotoras.sum({ locomotora => locomotora.velocidad() }))
	}
	
	method velocidadPromedio(){
		return self.sumatoriaDeVelocidades() / locomotoras.size()
	}

	method esEficiente() {
		return locomotoras.all({ locomotora => locomotora.arrastreUtil() >= (locomotora.peso() * 5) })
	}

	method puedeMoverse() {
		return self.sumatoriaDeArrastre() > self.sumatoriaDePeso()
	}

	method sumatoriaDeArrastre() {
		return locomotoras.sum({ locomotora => locomotora.arrastreUtil() })
	}

	method sumatoriaDePeso() {
		return vagones.sum({ vagon => vagon.peso() })
	}

	method kilosDeEmpujeNecesarioParaMoverse() {
		if (self.puedeMoverse()) {
			return 0
		} else {
			return self.sumatoriaDePeso() - self.sumatoriaDeArrastre()
		}
	}

	method vagonMasPesado() {
		return vagones.max({ vagon => vagon.peso() })
	}

	method totalDeVagonesYLocomotoras() {
		return vagones.size() + locomotoras.size()
	}

	method pesoTotal() {
		return self.sumatoriaDePeso() + locomotoras.sum({ locomotora => locomotora.peso() })
	}

	method estaFormacionEsCompleja() {
		return (self.totalDeVagonesYLocomotoras() > 20 || self.pesoTotal() > 10000  )
	}

}

