import 'package:intl/intl.dart' as intl;

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

  @override
  String get yourUpcomingClasses => 'Your Upcoming Classes';

  @override
  String get all => 'All';

  @override
  String nSeconds(int second) {
    String _temp0 = intl.Intl.pluralLogic(
      second,
      locale: localeName,
      other: '$second Seconds',
      one: '1 Second',
    );
    return '$_temp0';
  }

  @override
  String nMinutes(int minute) {
    String _temp0 = intl.Intl.pluralLogic(
      minute,
      locale: localeName,
      other: '$minute Minutes',
      one: '1 Minute',
    );
    return '$_temp0';
  }

  @override
  String nHours(int hour) {
    String _temp0 = intl.Intl.pluralLogic(
      hour,
      locale: localeName,
      other: '$hour Hours',
      one: '1 Hour',
    );
    return '$_temp0';
  }

  @override
  String nDays(int day) {
    String _temp0 = intl.Intl.pluralLogic(
      day,
      locale: localeName,
      other: '$day Days',
      one: '1 Day',
    );
    return '$_temp0';
  }

  @override
  String nMonths(int month) {
    String _temp0 = intl.Intl.pluralLogic(
      month,
      locale: localeName,
      other: '$month Months',
      one: '1 Month',
    );
    return '$_temp0';
  }

  @override
  String nYears(int year) {
    String _temp0 = intl.Intl.pluralLogic(
      year,
      locale: localeName,
      other: '$year Years',
      one: '1 Year',
    );
    return '$_temp0';
  }

  @override
  String get teacher => 'Teacher';

  @override
  String get lessonType => 'Lesson Type';

  @override
  String get date => 'Date';

  @override
  String get from => 'From';

  @override
  String get to => 'To';

  @override
  String get yourSchool => 'Your School';

  @override
  String get schooly => 'Schooly';

  @override
  String get inYourBucket => 'In your bucket';

  @override
  String get digitalTeachingIsFuture => 'Digital teaching is the future';

  @override
  String get schoolyIsLinkWithAi => 'is linking between you and your school with modern AI technologies.';

  @override
  String get startNow => 'Start Now!';
}
