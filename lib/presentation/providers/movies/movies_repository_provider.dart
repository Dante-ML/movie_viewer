//Provider que va a crear la instancia del movie Rpository implementation

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_viewer/infrastrucutre/datasource/tmdb_datasource_impl.dart';
import 'package:movie_viewer/infrastrucutre/repositories/movies_repository_impl.dart';

//Provee información a moviesRepository
final moviesRepositoryProvider = Provider((ref) {
  //Cambio sencillo entre datasource
  //return MoviesRepositoryImpl(datasource_generico());
  //return MoviesRepositoryImpl(IMBDatasource());

  //Repositorio inmutable, proporciona a los demas provider la información para consultar el moviesrepository
  return MoviesRepositoryImpl(MoviedbDatasource());
});