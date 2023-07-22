import 'package:flutter/material.dart';

class Movie {
  String poster;
  String name;
  double rating;
  List<String> genre;
  Color color;

  Movie(
    this.poster,
    this.name,
    this.rating,
    this.genre,
    this.color,
  );

  static List<Movie> movies = [
    Movie(
      'spiderman.jpg',
      'Spider-Man: Across the Spider-Verse',
      8.5,
      ['Animation', 'Action', 'Adventure'],
      Colors.deepPurple,
    ),
    Movie(
      'extraction.jpg',
      'Extraction 2',
      7.6,
      ['Action', 'Thriller'],
      Colors.black,
    ),
    Movie(
      'thecovenant.jpg',
      'The Covenant',
      6.2,
      ['Action', 'Fantasy', 'Horror'],
      Colors.yellowAccent,
    ),
    Movie(
      'amancalledotto.jpg',
      'A Man Called Otto',
      7.3,
      ['Drama'],
      Colors.blueAccent,
    ),
    Movie(
      'batman.jpg',
      'Batman: The Dark Knight',
      9.0,
      ['Action', 'Crime', 'Drama'],
      Colors.blueGrey,
    ),
    Movie(
      'johnwick.jpg',
      'John Wick 4',
      7.9,
      ['Action', 'Thriller'],
      Colors.orange,
    ),
    Movie(
      'interstellar.jpg',
      'Interstellar',
      8.6,
      ['Adventure', 'Drama', 'Sci-Fi'],
      Colors.blueGrey,
    ),
    Movie(
      'guardiansofthegalaxy.jpg',
      'Guardians of the Galaxy',
      8.1,
      ['Action', 'Adventure', 'Comedy'],
      Colors.deepPurpleAccent,
    ),
    Movie(
      'tetris.jpg',
      'Tetris',
      7.4,
      ['Biography', 'Drama', 'History'],
      Colors.lightGreen,
    ),
    Movie(
      'joker.jpg',
      'Joker',
      8.5,
      ['Crime', 'Drama', 'Thriller'],
      Colors.redAccent,
    ),
    Movie(
      'dungeons&dragons.jpg',
      'Dungeons & Dragons',
      6.7,
      ['Action', 'Adventure', 'Fantasy'],
      Colors.orangeAccent,
    ),
    Movie(
      'knivesout.jpg',
      'Knives Out',
      7.9,
      ['Comedy', 'Crime', 'Drama'],
      Colors.yellow,
    ),
    Movie(
      'godfather.jpg',
      'The Godfather',
      9.2,
      ['Crime', 'Drama'],
      Colors.amber,
    ),
    Movie(
      'theflash.jpg',
      'The Flash',
      8.0,
      ['Action', 'Adventure', 'Fantasy'],
      Colors.redAccent,
    ),
  ];
}
