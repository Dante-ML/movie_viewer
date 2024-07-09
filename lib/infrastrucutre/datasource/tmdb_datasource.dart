import 'package:dio/dio.dart';
import 'package:movie_viewer/config/constants/environment.dart';
import 'package:movie_viewer/domain/datasources/movies_datasource.dart';
import 'package:movie_viewer/domain/entities/movies.dart';
import 'package:movie_viewer/infrastrucutre/mappers/movie_mapper.dart';
import 'package:movie_viewer/infrastrucutre/models/moviedb/moviedb_response.dart';

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

    final movieDBresponse = MovieDbResponse.fromJson(response.data);

    //listado de peliculas
    final List<Movie> movies = movieDBresponse.results.map(
      (moviedb) => MovieMapper.movieDBToEntity(moviedb)
      //Función Lambda que toma todos los objetos de tipo moviedb y los convierte en nuestra entidad movie
      //utilizando nuestro mapper
    ).toList();

    return movies;
  }  
}
