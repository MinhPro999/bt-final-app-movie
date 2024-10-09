import 'package:dio/dio.dart';
import 'package:flutter_learning/lesson_24_25/data/models/movie_model.dart';
import 'package:flutter_learning/lesson_24_25/domain/entities/movie.dart';

const apiKey =
    "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4YTI1NTA5OTFlNGYzN2M0NTQxZGNhNzY4MWI2OTMwNiIsIm5iZiI6MTcyODAzNzE4Ni40NjA5NTUsInN1YiI6IjY2ZmQxZWNmYzZmYmIyZjBjZGYyM2QyYiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.EcYvxzToP5ipX3iLjbQrWJBETp7qxsxhmmsj50nwI-4";

//! Bước 3.1: Tạo Data Sources, sử dụng Model trong DataSource
abstract class MovieRemoteDataSource {
  Future<List<Movie>> getMovies();
}

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  final Dio dio;

  MovieRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<Movie>> getMovies() async {
    final queryParams = {'language': 'en-US', 'page': 1};

    final result =
        await dio.get("/movie/now_playing", queryParameters: queryParams);

    if (result.statusCode == 200) {
      final List<dynamic> moviesJson = result.data['results'];
      //! Sử dụng Model trong DataSource
      return moviesJson.map((json) => MovieModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
