import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/lesson_30_firestore/core/enums/status_state.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<ChangeAppLanguage>((event, emit) {
      emit(state.copyWith(currentLocale: event.newLocale));
    });
  }
}
