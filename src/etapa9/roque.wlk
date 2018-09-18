import pepita.*
import comidas.*
import masAves.*

object roque {
	var pupilos = #{}
	
	method agregarPupilo(ave) { 
		pupilos.add(ave)
	} 
	method pupilosl() { return pupilos }

	method entrenar() {
		pupilos.forEach({pupilo => { 
		pupilo.volar(10)
		pupilo.comer(alpiste,30)
		pupilo.volar(5)
		pupilo.haceLoQueQuieras()
		}})
	}
}