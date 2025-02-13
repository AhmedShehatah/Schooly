import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @requestCancelled.
  ///
  /// In ar, this message translates to:
  /// **'تم إلغاء الطلب إلى الخادم'**
  String get requestCancelled;

  /// No description provided for @connectionTimeout.
  ///
  /// In ar, this message translates to:
  /// **'انتهت مهلة الاتصال بالخادم'**
  String get connectionTimeout;

  /// No description provided for @receiveTimeout.
  ///
  /// In ar, this message translates to:
  /// **'انتهت مهلة استلام الاتصال بالخادم'**
  String get receiveTimeout;

  /// No description provided for @sendTimeout.
  ///
  /// In ar, this message translates to:
  /// **'انتهت مهلة إرسال الاتصال للخادم'**
  String get sendTimeout;

  /// No description provided for @connectionError.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد اتصال بالانترنت'**
  String get connectionError;

  /// No description provided for @unknownError.
  ///
  /// In ar, this message translates to:
  /// **'حدث خطأ غير متوقع'**
  String get unknownError;

  /// No description provided for @serverError.
  ///
  /// In ar, this message translates to:
  /// **'حدث خطأ في الخادم'**
  String get serverError;

  /// No description provided for @badCertificate.
  ///
  /// In ar, this message translates to:
  /// **'خطأ في الشهادة الأمنية'**
  String get badCertificate;

  /// No description provided for @sessionExpired.
  ///
  /// In ar, this message translates to:
  /// **'لقد انتهت الجلسة'**
  String get sessionExpired;

  /// No description provided for @password.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور'**
  String get password;

  /// No description provided for @identityNumberValidation.
  ///
  /// In ar, this message translates to:
  /// **'رقم الهوية يجب أن لا يقل عن ٧ أرقام'**
  String get identityNumberValidation;

  /// No description provided for @mustEnter.
  ///
  /// In ar, this message translates to:
  /// **'يجب ادخال {value}'**
  String mustEnter(Object value);

  /// No description provided for @mustLogin.
  ///
  /// In ar, this message translates to:
  /// **'يجب عليك تسجيل الدخول'**
  String get mustLogin;

  /// No description provided for @login.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل الدخول'**
  String get login;

  /// No description provided for @forgotPassword.
  ///
  /// In ar, this message translates to:
  /// **'هل نسيت كلمة السر؟'**
  String get forgotPassword;

  /// No description provided for @invalidPhoneNumber.
  ///
  /// In ar, this message translates to:
  /// **'رقم الجوال غير صحيح'**
  String get invalidPhoneNumber;

  /// No description provided for @nationalId.
  ///
  /// In ar, this message translates to:
  /// **'رقم الهوية'**
  String get nationalId;

  /// No description provided for @country.
  ///
  /// In ar, this message translates to:
  /// **'الدولة'**
  String get country;

  /// No description provided for @chooseCountry.
  ///
  /// In ar, this message translates to:
  /// **'اختر الدولة'**
  String get chooseCountry;

  /// No description provided for @phoneNumber.
  ///
  /// In ar, this message translates to:
  /// **'رقم الجوال'**
  String get phoneNumber;

  /// No description provided for @invalidEmail.
  ///
  /// In ar, this message translates to:
  /// **'البريد الالكتروني غير صحيح'**
  String get invalidEmail;

  /// No description provided for @email.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني'**
  String get email;

  /// No description provided for @otpValidation.
  ///
  /// In ar, this message translates to:
  /// **'يجب ان يكون رقم التحقق المكون من ٤ ارقام'**
  String get otpValidation;

  /// No description provided for @yourUpcomingClasses.
  ///
  /// In ar, this message translates to:
  /// **'حصصك القادمة'**
  String get yourUpcomingClasses;

  /// No description provided for @all.
  ///
  /// In ar, this message translates to:
  /// **'الكل'**
  String get all;

  /// No description provided for @nSeconds.
  ///
  /// In ar, this message translates to:
  /// **'{second, plural, =0{٠ ثوانٍ} =1{ثانية} =2{ثانيتين} few{{second} ثوانٍ} many{{second} ثانية} other{{second} ثانية}}'**
  String nSeconds(int second);

  /// No description provided for @nMinutes.
  ///
  /// In ar, this message translates to:
  /// **'{minute, plural, =0{٠ دقائق} =1{دقيقة} =2{دقيقتين} few{{minute} دقائق} many{{minute} دقيقة} other{{minute} دقيقة}}'**
  String nMinutes(int minute);

  /// No description provided for @nHours.
  ///
  /// In ar, this message translates to:
  /// **'{hour, plural, =0{٠ ساعات} =1{ساعة} =2{ساعتين} few{{hour} ساعات} many{{hour} ساعة} other{{hour} ساعة}}'**
  String nHours(int hour);

  /// No description provided for @nDays.
  ///
  /// In ar, this message translates to:
  /// **'{day, plural, =0{٠ أيام} =1{يوم} =2{يومين} few{{day} أيام} many{{day} يوم} other{{day} يوم}}'**
  String nDays(int day);

  /// No description provided for @nMonths.
  ///
  /// In ar, this message translates to:
  /// **'{month, plural, =0{٠ أشهر} =1{شهر} =2{شهرين} few{{month} أشهر} many{{month} شهر} other{{month} شهر}}'**
  String nMonths(int month);

  /// No description provided for @nYears.
  ///
  /// In ar, this message translates to:
  /// **'{year, plural, =0{٠ سنوات} =1{سنة} =2{سنتين} few{{year} سنوات} many{{year} سنة} other{{year} سنة}}'**
  String nYears(int year);

  /// No description provided for @teacher.
  ///
  /// In ar, this message translates to:
  /// **'المعلم'**
  String get teacher;

  /// No description provided for @lessonType.
  ///
  /// In ar, this message translates to:
  /// **'نوع الجلسة'**
  String get lessonType;

  /// No description provided for @date.
  ///
  /// In ar, this message translates to:
  /// **'التاريخ'**
  String get date;

  /// No description provided for @from.
  ///
  /// In ar, this message translates to:
  /// **'من'**
  String get from;

  /// No description provided for @to.
  ///
  /// In ar, this message translates to:
  /// **'الى'**
  String get to;

  /// No description provided for @yourClasses.
  ///
  /// In ar, this message translates to:
  /// **'فصولك الدراسية'**
  String get yourClasses;

  /// No description provided for @hello.
  ///
  /// In ar, this message translates to:
  /// **'مرحبًا 👋'**
  String get hello;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
