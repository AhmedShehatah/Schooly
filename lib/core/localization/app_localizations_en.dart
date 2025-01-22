import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get requestCancelled => 'The request to the server has been cancelled';

  @override
  String get connectionTimeout => 'The connection to the server timed out';

  @override
  String get receiveTimeout => 'The connection to the server has timed out';

  @override
  String get sendTimeout => 'The connection to the server has timed out';

  @override
  String get connectionError => 'No internet connection';

  @override
  String get unknownError => 'An unexpected error occurred';

  @override
  String get serverError => 'A server error has occurred';

  @override
  String get badCertificate => 'Error in security certificate';

  @override
  String get sessionExpired => 'Session has expired';
}
