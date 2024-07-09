import 'package:dio/dio.dart';
import 'package:movie_viewer/config/constants/environment.dart';
import 'package:movie_viewer/domain/datasources/movies_datasource.dart';
import 'package:movie_viewer/domain/entities/movies.dart';

class MoviedbDatasource extends MoviesDatasource {

  //Peticiones HTTP para the movie DB
  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3',
    queryParameters: {
      'api_key' : Environment.tmdbKey,
      'language' : 'es-MX'
    }
    )
  );

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    //Data directa de TMDB, sin procesar
    final response = await dio.get('/movie/now_playing');

    //listado de peliculas
    final List<Movie> movies = [];

    return movies;
  }  
}
