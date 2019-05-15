import wollok.game.*

class Manzana {
	var property position = game.at(5,1) 
	
	method image() = "manzana.png"
	
	method energia() = 80
	
	method teChoco(alguien){
		alguien.guardarComida(self)
	}
}

class Alpiste {
	var property position = game.at(5,5) 
	method image() = "alpiste.png"
	
	method teChoco(alguien){
		alguien.guardarComida(self)
	}
	
	method energia() = 5
}
object vacio {
	var property position = game.at(20, 20) 
	
	method image() = "ciudad.png"
	
	method energia() = 0
	
	
}
