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
/* 
	method agregarLocomotoraSueltaA(formacion) {
		
		if (!formacion.puedeMoverse()) {
			formacion.add(self.mostrarLocomotoras())
			locomotorasSueltas.remove()
		}
		
	}
*/
	method mostrarLocomotoras() {
		return locomotorasSueltas
	}

}
