// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'app_bloc.dart';

sealed class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object> get props => [];
}

class ChangeAppLanguage extends AppEvent {
  final Locale newLocale;
  const ChangeAppLanguage({
    required this.newLocale,
  });
  @override
  List<Object> get props => [newLocale];
}
