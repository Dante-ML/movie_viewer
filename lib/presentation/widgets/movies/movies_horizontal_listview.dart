import 'package:flutter/material.dart';
import 'package:movie_viewer/domain/entities/movies.dart';

class MoviesHorizontalListview extends StatelessWidget {
  final List<Movie> movies;
  final String? title;
  final String? subtitle;
  final VoidCallback? loadNextPage;

  const MoviesHorizontalListview(
      {super.key, required this.movies, this.title, this.subtitle, this.loadNextPage});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
