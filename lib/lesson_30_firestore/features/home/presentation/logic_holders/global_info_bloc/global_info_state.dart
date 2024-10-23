// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'global_info_bloc.dart';

// class GlobalInfoError extends GlobalInfoState {
//   final String? message;
//   GlobalInfoError({
//     this.message,
//   });
// }

// class GlobalInfoInitial extends GlobalInfoState {}

// class GlobalInfoLoaded extends GlobalInfoState {
//   final List<Genre>? genreList;
//   final ImageConfigInfo? imageConfigInfo;
//   GlobalInfoLoaded({
//     required this.genreList,
//     required this.imageConfigInfo,
//   });
// }

// class GlobalInfoLoading extends GlobalInfoState {}

// abstract class GlobalInfoState {}

class GlobalInfoState {
  final StatusState status;
  final List<Genre>? genreList;
  final ImageConfigInfo? imageConfigInfo;
  final Locale? currentLocale;
  final String? errMsg;
  GlobalInfoState({
    this.genreList,
    this.imageConfigInfo,
    this.errMsg,
    this.currentLocale,
    this.status = StatusState.idle,
  });

  GlobalInfoState copyWith({
    StatusState? status,
    List<Genre>? genreList,
    ImageConfigInfo? imageConfigInfo,
    String? errMsg,
    Locale? currentLocale,
  }) {
    return GlobalInfoState(
      status: status ?? this.status,
      genreList: genreList ?? this.genreList,
      imageConfigInfo: imageConfigInfo ?? this.imageConfigInfo,
      errMsg: errMsg,
      currentLocale: currentLocale ?? this.currentLocale,
    );
  }
}
