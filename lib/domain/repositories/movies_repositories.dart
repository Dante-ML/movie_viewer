//Implementación
//Manda a llamar el datasource

import '../entities/movies.dart';

abstract class MoviesRepositories {
  
  
  Future <List<Movie>> getNowPlaying({int page = 1 });
}