import bicis.*

class Deposito {
	const property bicis = []
	
	method bicisRapidas() {
		return bicis.filter({ bici => bici.velocidadDeCrucero() > 25})
	}
	method marcas() {
		return bicis.map({ bici => bici.marca()}).asSet()
	}
	method esNocturno() {
		return bicis.all({ bici => bici.tieneLuz()})
	}
	method tieneBiciParaLlevar(kg) {
		return bicis.any({ bici => bici.carga() > kg})
	}
	method biciMasRapdia() {
		return bicis.max({bici => bici.velocidadDeCrucero()}).marca()
	}
	method cargaTotalDeBicisLargar() {
		const bicisLargas = bicis.filter({bici => bici.largo() > 170})
		return bicisLargas.sum({bici => bici.carga()})
	}
	method cantidadDeBicisSinAccesorios() {
		return bicis.count({bici => bici.accesorios().size() == 0})
	}
	
	method bicisCompanierasDe(bicicleta) {
		return bicis.filter ({bici => bici.marca() == bicicleta.marca() and bici.largo() - bicicleta.largo() <= 10 and bici != bicicleta})
	}
	method hayParCompaniero() {
		
	}
}
