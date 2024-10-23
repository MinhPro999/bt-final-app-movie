// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/lesson_30_firestore/core/enums/status_state.dart';
import 'package:flutter_learning/lesson_30_firestore/core/services/logger_service.dart';
import 'package:flutter_learning/lesson_30_firestore/features/home/domain/entities/genre.dart';
import 'package:flutter_learning/lesson_30_firestore/features/home/domain/entities/image_configuration.dart';
import 'package:flutter_learning/lesson_30_firestore/features/home/domain/usecases/global_info_usecases.dart';

part 'global_info_event.dart';
part 'global_info_state.dart';

class GlobalInfoBloc extends Bloc<GlobalInfoEvent, GlobalInfoState> {
  final GlobalInfoUsecases usecase;
  GlobalInfoBloc(
    this.usecase,
  ) : super(GlobalInfoState()) {
    on<GetGlobalInfo>((event, emit) async {
      try {
        emit(state.copyWith(status: StatusState.loading));
        final genreList = await usecase.getGenre();
        final imageConfig = await usecase.getImageInfo();
        emit(
            state.copyWith(genreList: genreList, imageConfigInfo: imageConfig));
      } catch (e) {
        printE("[GlobalInfoBloc] - [GetGlobalInfo] error: ${e.toString()}");
        emit(state.copyWith(
            status: StatusState.failure, errMsg: "error occured"));
      } finally {
        emit(state.copyWith(status: StatusState.idle));
      }
    });
  }
}
