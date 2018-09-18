/*
 * Empieza el consepto de clase
 * Una clase es como un plano para una casa. Con un plano puedo crear muchas casas. Lo mismo pasa con las clases
 * De una clase puedo tener muchas instancias u objetos
 * Si o si hay que instanciar una clase hay que crear un objeto
 */

import comidas.*

class Golondrinas {  // las clases es modelar una cosa
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method volar(kms) { energia -= kms + 10 }
	
	// metodos nuevos
	method estaDebil() { return self.energia() < 50 }  
	method estaFeliz() { return self.energia().between(500, 1000) }
	method cuantoQuiereVolar() { 
		var cuanto = self.energia() / 5
		if (energia.between(300, 400)) { cuanto += 10 }
		if (energia % 20 == 0) { cuanto += 15 }
		return cuanto
	}
	method haceLoQueQuieras() { 
		if (self.estaDebil()) {
			self.comer(alpiste, 20)
		} else if (self.estaFeliz()) {
			self.volar(8)
		} 
	}
}

object prueba {
	/*
	 * el codigo debajo es el equivalente al hacer un objeto juliana y cargarle todos los method de la clase
	 * crea una instancia para usar las clases
	 */
	
	var juliana = new Golondrinas() //creamos un objeto basado en la clase golondrina
	var enriqueta = new Golondrinas()
	var melina = new Golondrinas()
	var tatiana = new Golondrinas()
	
	
	method energiaJuliana(){
		return juliana.energia()
	}
	
	method energiaEnriqueta(){
		return enriqueta.energia()
	}
	
	method comerEnriqueta(cosa,gramos){
		enriqueta.comer(cosa,gramos)
	}
	
	method comerJuliana(cosa,gramos){
		juliana.comer(cosa,gramos)
	}
	
	method energiaMelina(){
		return melina.energia()
	}
	
	method comerMelina(cosa,gramos){
		melina.comer(cosa,gramos)
	}
	
	method energiaTatiana(){
		return tatiana.energia()
	}
	
	method comerTatiana(cosa,gramos){
		tatiana.comer(cosa,gramos)
	}
}