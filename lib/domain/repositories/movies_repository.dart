//Implementación
//Manda a llamar el datasource

import '../entities/movies.dart';

abstract class MoviesRepository {
  
  
  Future <List<Movie>> getNowPlaying({int page = 1 });
}