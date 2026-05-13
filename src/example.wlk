
// Juan.aprobar(objetos1, nota)
class Estudiante {
	var materiasAprobadas = #{}

	method aprobar( materia, nota ) {
		if(  self.estáAprobada(materia))
			self.error("ya aprobó la materia")
	}   else {

			materiasAprobadas.add(materia)
	}


	method estáAprobada() {
		
	}
} 



/*	materiasAprobadas.add(
		new MateriaAprobada(
			materia = materia,
			nota = nota
		)
	)
*/
object materiasAprobadas {
	const materia = null
	const nota = 0

	method materia(_materia) {
		materia = _materia
	}

	method materia() {
		return materia
	}

	method nota(_nota) {
		nota = _nota
	}

	method nota() {
		return nota
	}	

}

object materia {
	
}

object carrera {
	
}
