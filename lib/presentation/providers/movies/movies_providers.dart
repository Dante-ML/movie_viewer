import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_viewer/domain/entities/movies.dart';

import '../providers.dart';


//El notifier es MoviesNotifier y la data que maneja es un listado de Movie
final nowPlayingMoviesProvider = StateNotifierProvider<MoviesNotifier, List<Movie>>((ref) {

  final fetchMoreMovies = ref.watch(moviesRepositoryProvider).getNowPlaying;

  return MoviesNotifier(fetchMoreMovies: fetchMoreMovies);
});

typedef MoviesCallBack = Future<List<Movie>> Function({int page});

class MoviesNotifier extends StateNotifier<List<Movie>> {
  int currentPage = 0;
  MoviesCallBack fetchMoreMovies;

  MoviesNotifier({
    required this.fetchMoreMovies,
  }) : super([]);

  Future<void> loadNextPage() async {
    currentPage++;

    final List<Movie> movies = await fetchMoreMovies(page: currentPage);
    state = [...state, ...movies];
  }
}
