import ciudades.*
import wollok.game.*

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
		energia -= self.energiaParaVolar(position.distance(nuevaPosicion))
		self.position(nuevaPosicion)
	}	
	

}

object pepona {
	var property position = game.at(3,4) 
	method image() = "pepona.png"
	method nombre() = "Pepona"

	method nuevaAmiga(ave){
		game.say(self, "¡Hola" + ave.nombre() + "!")
	}

}

object roque{
	var property position = game.at(5,5) 
	method image() = "jugador.png"
	method nombre() = "Roque"
	
	// .truncate(0)    <- limita los decimales
	
}
