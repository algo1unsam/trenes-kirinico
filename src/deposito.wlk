import trenes.*
import vagones.*

class Deposito {
	
	var formaciones = []
	var locomotorasSueltas = []

	method conjuntoDeVagonesPesado() {
		return formaciones.map({ formacion => formacion.vagonMasPesado() })
	}

	method agregar(formacion) {
		formaciones.add(formacion)
	}

	method conductorExperimentado() {
		return formaciones.any({ formacion => formacion.estaFormacionEsCompleja() })
	}

	method agregarlocomotoras(locomotoraNueva) {
		locomotorasSueltas.add(locomotoraNueva)
	}
 
	method agregarLocomotoraSueltaA(formacion,locomotora) {
		
		if (!formacion.puedeMoverse()) {
			formacion.agragar(self.locomotoraCandidata(formacion))
			locomotorasSueltas.remove(locomotora)
		}
		
	}

	method locomotoraCandidata(formacion) {
		return locomotorasSueltas.find ({locomotora => locomotora.arrastreUtil()>= formacion.cantidadQueLeFaltaParaMoverse()})
	}

}
