
// Juan.aprobar(objetos1, nota)
class Estudiante {

    const materiasAprobadas = #{}

    const carreras = #{}

    method aprobar( materia, nota ) {

        if ( self.estáAprobada( materia ) ) {
             self.error( "ya aprobó la materia" )
        } else {

            materiasAprobadas.add(
                new MateriaAprobada(
                    materia = materia,
                    nota = nota
                )
            )
        }
    }

    method estáAprobada( materia ) {

        return materiasAprobadas.any {
            aprobacion => aprobacion.corresponde( materia )
        }
    }

	method cantidadDeMateriasAprobadas() = materiasAprobadas.size()

	method promedio() =  materiasAprobadas.map{ aprobación => aprobación.nota() }.sum() 
						 / self.cantidadDeMateriasAprobadas()

    method inscribirseAMaterias( carrera ) {
        carreras.add( carrera ) 
    }

    method materiasDeTodasLasCarreras() = carreras.map( { carrera => carrera.materia() } ).flatten()

//  method materiasDeTodasLasCarreras() = carreras.flatmap( { carrera => carrera.materia() } )


}

class MateriaAprobada {

	var property materia 
	var property nota 

	method corresponde( unaMateria ) = materia == unaMateria	// corregir 

}

class Materia {
	var property nombre 
}

object carrera {
    const materias = #{}

    method agregarMateria( materia ) {
        materias.add( materia )
    }

	method materias() = materias

}


