//Provider de solo lectura para cambiar rapidamente la cantidad de peliculas leidas en cualquier lugar de la aplicación
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/entities/movies.dart';
import '../providers.dart';

final moviesSlideShowProvider = Provider<List<Movie>>((ref){

  final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);

  if ( nowPlayingMovies.isEmpty ) return [];
  return nowPlayingMovies.sublist(0,6);
},);