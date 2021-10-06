class Bicis {

	var property rodado
	var property largo
	const property marca
	const property accesorios = []

	method altura() = rodado * 2.5 + 15

	method carga() = accesorios.sum({ cosa => cosa.carga() })

	method peso() = self.pesoTotalDeAccesorios() + rodado / 2

	method pesoTotalDeAccesorios() = accesorios.sum({ cosa => cosa.peso() })

	method tieneLuz() {
		return accesorios.any({ cosa => cosa.esLuminoso()})
	}

	method velocidadDeCrucero() = if (largo >= 120) {
		rodado + 6
	} else {
		rodado + 2
	}
	method cantidadDeAccesoriosLivianos() = accesorios.count({cosa => cosa.peso() < 1})
	

}

