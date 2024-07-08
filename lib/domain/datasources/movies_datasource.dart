//Abstracción
//define los metodos a usar posteriormente
//no hay una implementación

import '../entities/movies.dart';

abstract class MoviesDatasource {
  
  //Metodo que posteriormente va a necesitar un listado del tipo movies
  Future <List<Movie>> getNowPlaying({int page = 1 });
}