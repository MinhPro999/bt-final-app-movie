// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_learning/lesson_24_25/domain/entities/genre.dart';
import 'package:flutter_learning/lesson_24_25/domain/entities/image_configuration.dart';
import 'package:flutter_learning/lesson_24_25/domain/repositories/movie_repository.dart';

class GlobalInfoUsecases {
  final MovieRepository repository;
  GlobalInfoUsecases(this.repository);

  Future<List<Genre>?> getGenre() {
    return repository.getGenre();
  }

  Future<ImageConfigInfo?> getImageInfo() {
    return repository.getImageInfo();
  }
}
