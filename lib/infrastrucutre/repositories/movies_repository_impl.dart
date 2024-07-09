
import 'package:movie_viewer/domain/datasources/movies_datasource.dart';
import 'package:movie_viewer/domain/entities/movies.dart';
import 'package:movie_viewer/domain/repositories/movies_repository.dart';

class MoviesRepositoryImpl extends MoviesRepository{
  //Llama a mandar nuestro datasource para que llame al getNowPlaying
  //Esto es para tener un luegar centralizado donde ya tengamos el datasource incluso, ya que incluso si cambiaramos
  //los API aqui no nos veriamos afectados

  final MoviesDatasource datasource;

  MoviesRepositoryImpl(this.datasource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return datasource.getNowPlaying(page: page);
  }

}