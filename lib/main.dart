import 'package:flutter/material.dart';

void main() {
  runApp(CarteleraCineApp());
}

class CarteleraCineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartelera de Cine',
      home: CarteleraPage(),
    );
  }
}

class CarteleraPage extends StatelessWidget {
  // Lista de películas
  final List<Pelicula> peliculas = [
    Pelicula(
      titulo: 'Inception',
      director: 'Christopher Nolan',
      genero: 'Ciencia Ficción',
      descripcion: 'Un ladrón, que roba secretos corporativos mediante el uso '
          'de la tecnología de compartir sueños, se le ofrece la '
          'oportunidad de borrar su historial como pago por una tarea '
          'prácticamente imposible: la inserción.',
    ),
    Pelicula(
      titulo: 'Interstellar',
      director: 'Christopher Nolan',
      genero: 'Ciencia Ficción',
      descripcion: 'Un grupo de exploradores hacen uso de un agujero de '
          'gusano recién descubierto para superar las limitaciones de los '
          'viajes espaciales tripulados y vencer las enormes distancias '
          'que implica un viaje interestelar.',
    ),
    Pelicula(
      titulo: 'The Dark Knight',
      director: 'Christopher Nolan',
      genero: 'Acción, Crimen, Drama',
      descripcion: 'Cuando la amenaza conocida como El Guasón surge de su '
          'misterioso pasado, él irrumpe en la vida de Gotham y su protector, '
          'Batman, y lanza una ofensiva de caos y anarquía.',
    ),
    Pelicula(
      titulo: 'The Shawshank Redemption',
      director: 'Frank Darabont',
      genero: 'Drama',
      descripcion: 'Dos hombres en prisión encuentran consuelo y eventual '
          'redención a través de actos comunes de decencia.',
    ),
    Pelicula(
      titulo: 'Pulp Fiction',
      director: 'Quentin Tarantino',
      genero: 'Crimen, Drama',
      descripcion: 'La vida cotidiana de un par de asesinos a sueldo, una '
          'pareja de boxeadores, y una pareja de gangsters de las Vegas, y un '
          'par de forajidos. ',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartelera de Cine'),
      ),
      body: ListView.builder(
        //Componente para contruir una lista
        itemCount: peliculas.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Container(
              padding: EdgeInsets.all(10), // Padding dentro de la tarjeta
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(peliculas[index].director),
                      Spacer(),
                      Text(
                        peliculas[index].genero,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black54),
                      ),
                    ],
                  ),
                  Text(
                    peliculas[index].titulo,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(peliculas[index].descripcion),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// Clase Pelicula para representar la información de una película
class Pelicula {
  final String titulo;
  final String director;
  final String genero;
  final String descripcion;

  Pelicula({
    required this.titulo,
    required this.director,
    required this.genero,
    required this.descripcion,
  });
}
