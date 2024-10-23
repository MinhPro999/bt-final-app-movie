// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'app_bloc.dart';

class AppState extends Equatable {
  final StatusState status;
  final Locale? currentLocale;
  const AppState({this.status = StatusState.idle, this.currentLocale});

  @override
  List<Object?> get props => [
        status,
        currentLocale,
      ];

  AppState copyWith({
    StatusState? status,
    Locale? currentLocale,
  }) {
    return AppState(
      status: status ?? this.status,
      currentLocale: currentLocale ?? this.currentLocale,
    );
  }
}
