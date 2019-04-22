import wollok.game.*

object manzana {
	var posicionX = 5
	var posicionY = 1
	
	method image() = "manzana.png"
	method position() = game.at(posicionX,posicionY)
	
	method energia() = 80
}

object alpiste {
	var posicionX = 5
	var posicionY = 5
	
	method image() = "alpiste.png"
	method position() = game.at(posicionX,posicionY)
	
	method energia() = 5
}
