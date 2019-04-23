import wollok.game.*

object manzana {
	var property posicionX = 5
	var property posicionY = 1
	
	method image() = "manzana.png"
	method position() = game.at(posicionX,posicionY)
	
	method energia() = 80
}

object alpiste {
	var property posicionX = 5
	var property posicionY = 5
	
	method image() = "alpiste.png"
	method position() = game.at(posicionX,posicionY)
	
	method energia() = 5
}
object vacio {
	var property posicionX = 20
	var property posicionY = 20
	
	method image() = "ciudad.png"
	method position() = game.at(20,20)
	
	method energia() = 0
	
	
}
