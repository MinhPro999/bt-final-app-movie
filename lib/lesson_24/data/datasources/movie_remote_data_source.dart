import 'dart:convert';

import 'package:flutter_learning/lesson_24/data/models/movie_model.dart';
import 'package:flutter_learning/lesson_24/domain/entities/movie.dart';
import 'package:http/http.dart' as http;

//! Bước 3.1: Tạo Data Sources, sử dụng Model trong DataSource
abstract class MovieRemoteDataSource {
  Future<List<Movie>> getMovies();
}

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  final http.Client client;

  MovieRemoteDataSourceImpl({required this.client});

  @override
  Future<List<Movie>> getMovies() async {
    final response = await client.get(
      Uri.parse(
          'https://api.themoviedb.org/3/movie/popular?api_key=YOUR_API_KEY'),
    );

    if (response.statusCode == 200) {
      final List<dynamic> moviesJson = json.decode(response.body)['results'];
      //! Sử dụng Model trong DataSource
      return moviesJson.map((json) => MovieModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
