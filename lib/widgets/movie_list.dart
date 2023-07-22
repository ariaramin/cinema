import 'dart:math';

import 'package:cinema/model/movie.dart';
import 'package:cinema/widgets/movie_item.dart';
import 'package:flutter/material.dart';

class MovieList extends StatelessWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context) {
    final columns = sqrt(Movie.movies.length).toInt();
    return SizedBox(
      width: columns * 370,
      child: Wrap(
        children: List.generate(
          Movie.movies.length,
          (index) => Transform.translate(
            offset: Offset(0, index.isEven ? 240 : 0),
            child: MovieItem(movie: Movie.movies[index]),
          ),
        ),
      ),
    );
  }
}
