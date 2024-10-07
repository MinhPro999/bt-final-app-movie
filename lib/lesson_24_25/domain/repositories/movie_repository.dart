import 'package:flutter_learning/lesson_24_25/domain/entities/movie.dart';

abstract class MovieRepository {
  Future<List<Movie>> getMovies();
}
