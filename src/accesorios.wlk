object farolito {
	
	method peso()= 0.5
	method carga()= 0
	method esLuminoso()=true
}

class Canasto{
	var property volumen 
	
	method peso()= volumen /10
	method carga()= volumen *2
	method esLuminoso()= false
}

class MorralDeBici{
	var property largo
	var property ojoDeGato 
	
	method peso()= 1.2
	method carga()= largo /3
	method esLuminoso()= ojoDeGato
}

/*
 * Para agregar nuevos accesorios debemos de tener en cuenta cuales son los mensajes a los que nuestros, previamente, creados accesorios pueden responder.
 * Serian los mensajes peso(), carga() y esLuminoso(). De esta forma conservamos el polimorfismo de nuestros objetos.
 * En el caso del canasto de atras, podriamos considerar como el que mismo objeto que ya teniamos de Canasto puede contener un atributo llamado "estaAlFrente" que 
 * con un booleano indica que efectivamente esta en la aprte de adelante o en la parte trasera.
 * Como consideracion del contrato, debemos tener en cuenta que tipo de dato devuelve cada metodo, debemos tener una congruencia en esto.
 * 
 */
