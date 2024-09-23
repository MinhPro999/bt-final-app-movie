import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get helloWorld => 'Xin chào Thế Giới';

  @override
  String get helloVTI => 'Xin chào VTI, bạn khoẻ không';
}

/// The translations for Vietnamese, as used in Viet Nam (`vi_VN`).
class AppLocalizationsViVn extends AppLocalizationsVi {
  AppLocalizationsViVn(): super('vi_VN');

  @override
  String get helloWorld => 'Xin chào Thế Giới';

  @override
  String get helloVTI => 'Xin chào VTI, bạn khoẻ không';
}
