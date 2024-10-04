import 'dart:convert';

import 'package:flutter_learning/lesson_24/data/models/movie_model.dart';
import 'package:flutter_learning/lesson_24/domain/entities/movie.dart';
import 'package:http/http.dart' as http;

const apiKey =
    "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4YTI1NTA5OTFlNGYzN2M0NTQxZGNhNzY4MWI2OTMwNiIsIm5iZiI6MTcyODAzNzE4Ni40NjA5NTUsInN1YiI6IjY2ZmQxZWNmYzZmYmIyZjBjZGYyM2QyYiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.EcYvxzToP5ipX3iLjbQrWJBETp7qxsxhmmsj50nwI-4";

//! Bước 3.1: Tạo Data Sources, sử dụng Model trong DataSource
abstract class MovieRemoteDataSource {
  Future<List<Movie>> getMovies();
}

class MovieRemoteDataSourceImpl implements MovieRemoteDataSource {
  final http.Client client;

  MovieRemoteDataSourceImpl({required this.client});

  @override
  Future<List<Movie>> getMovies() async {
    var headers = {
      'Authorization': 'Bearer $apiKey',
      'Accept': 'application/json'
    };
    var url = Uri.parse(
        'https://api.themoviedb.org/3/movie/now_playing?language=en-US&page=1');
    final response = await client.get(url, headers: headers);

    if (response.statusCode == 200) {
      final List<dynamic> moviesJson = json.decode(response.body)['results'];
      //! Sử dụng Model trong DataSource
      return moviesJson.map((json) => MovieModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
