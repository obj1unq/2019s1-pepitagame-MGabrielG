import ciudades.*
import wollok.game.*
import comidas.*


object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property position = game.at(3,3)
	method image(){
					if (energia > 100){
						return "pepita-gorda-raw.png"
					} else {
						return "pepita.png"					
					}
	}
	
	method nombre(){
		return "Pepita"
	}
	
	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (self.energiaParaVolar(position.distance(unaCiudad.position() ) ) > self.energia() ){
			game.say(self, "Dame de comer primero!")
		}
		else if (self.position() != unaCiudad.position()) {
			self.move(unaCiudad.position())
			ciudad = unaCiudad
		}
		else{
			game.say(self, "Ya estoy en " + unaCiudad.nombre() + "!")
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
//		if (energia >= self.energiaParaVolar(position.distance(nuevaPosicion))){
				energia -= self.energiaParaVolar(position.distance(nuevaPosicion))
				self.position(nuevaPosicion)
//		} else {
//			game.say(self, "Dame de comer primero!")
//		}
	}	
	
	
	
	method teChoco(alguien){
		//No hace nada
	}
	 
	method guardarComida(comida){
		self.come(comida)
		game.removeVisual(comida)

	}
	

}

object pepona {
	var property position = game.at(3,4) 
	method image() = "pepona.png"
	method nombre() = "Pepona"

	method nuevaAmiga(ave){
		game.say(self, "¡Hola " + ave.nombre() + "!")
	}
	
	
	
	
	method teChoco(alguien){
		//No hace nada
	}

}

object roque{
	var property position = game.at(5,6) 
	var comidaGuardada = vacio
	method image() = "jugador.png"
	method nombre() = "Roque"
	
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
	}	
	
	method posicionarComida(comida){
		if (comida != vacio){
			comida.position (game.at(
								(self.randomInt(0, 10) ), (self.randomInt(0, 10) )
									))
		}						
	}
	
	
	// .truncate(0)    <- limita los decimales
	method randomInt(x, y){
		return (x.randomUpTo(y)).truncate(1)
	}
	
	method guardarComida(comida){
		self.soltarComida(comidaGuardada)
		game.removeVisual(comida)
		comidaGuardada = comida
	}
 
	method soltarComida(comida){
		self.posicionarComida(comida)
		game.addVisual(comida)
		comidaGuardada = vacio
	}
	
	
	
	method teChoco(alguien){
		//No hace nada
	}
	
}
