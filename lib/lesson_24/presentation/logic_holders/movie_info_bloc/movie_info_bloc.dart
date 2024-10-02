import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'movie_info_event.dart';
part 'movie_info_state.dart';

class MovieInfoBloc extends Bloc<MovieInfoEvent, MovieInfoState> {
  MovieInfoBloc() : super(MovieInfoInitial()) {
    on<MovieInfoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
