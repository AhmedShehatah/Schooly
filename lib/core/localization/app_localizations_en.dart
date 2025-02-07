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

  @override
  String get password => 'Password';

  @override
  String get identityNumberValidation => 'Identity number must be at least 7 digits';

  @override
  String mustEnter(Object value) {
    return 'Must enter $value';
  }

  @override
  String get mustLogin => 'You must login first';

  @override
  String get login => 'Login';

  @override
  String get forgotPassword => 'Forgot Password?';

  @override
  String get invalidPhoneNumber => 'Invalid phone number';

  @override
  String get nationalId => 'National ID';

  @override
  String get country => 'Country';

  @override
  String get chooseCountry => 'Choose Country';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String get invalidEmail => 'Email is incorrect';

  @override
  String get email => 'Email';

  @override
  String get otpValidation => 'The verification code must be 4 digits long';
}
