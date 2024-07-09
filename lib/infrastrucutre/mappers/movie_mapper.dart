//Encargado de leer los diferentes modelos y crear la entidad movie
//sirve como una capa de protección para nuestra aplicación de nuestra API

import 'package:movie_viewer/domain/entities/movies.dart';
import 'package:movie_viewer/infrastrucutre/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB moviedb) => Movie(
      adult: moviedb.adult,
      backdropPath: moviedb.backdropPath != ''
          ? 'https://image.tmdb.org/t/p/w500/${moviedb.backdropPath}'
          : 'https://imgs.search.brave.com/Bmrhk2Gmj5a1tE8rmj7AQwIc5AhV6lbaqHnL3nGkYZI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvNTAy/NTg0MDA1L3Bob3Rv/LzQwNC1lcnJvci1z/aWduLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz14dXN4Ylpq/cDJTSU9wRFFrTmNo/bHRuSE53c0tQcU9J/YmxySEhaeU5jdFJZ/PQ',
      genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath: moviedb.posterPath != ''
          ? 'https://image.tmdb.org/t/p/w500/${moviedb.posterPath}'
          : 'no-poster',
      releaseDate: moviedb.releaseDate,
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount);
}
