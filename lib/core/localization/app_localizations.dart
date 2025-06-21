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
  /// **'كلمة السر'**
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

  /// No description provided for @yourSchool.
  ///
  /// In ar, this message translates to:
  /// **'مَدرستك'**
  String get yourSchool;

  /// No description provided for @schooly.
  ///
  /// In ar, this message translates to:
  /// **'سكولي'**
  String get schooly;

  /// No description provided for @inYourBucket.
  ///
  /// In ar, this message translates to:
  /// **'في جيبك'**
  String get inYourBucket;

  /// No description provided for @digitalTeachingIsFuture.
  ///
  /// In ar, this message translates to:
  /// **'التعليم الرقمي هو الطريق للمستقبل.'**
  String get digitalTeachingIsFuture;

  /// No description provided for @schoolyIsLinkWithAi.
  ///
  /// In ar, this message translates to:
  /// **'بتوصل بينك وبين مدرستك بأحدث تقنيات الذكاء الاصطناعي.'**
  String get schoolyIsLinkWithAi;

  /// No description provided for @startNow.
  ///
  /// In ar, this message translates to:
  /// **'ابدا دلوقتي!'**
  String get startNow;

  /// No description provided for @home.
  ///
  /// In ar, this message translates to:
  /// **'الرئيسية'**
  String get home;

  /// No description provided for @notifications.
  ///
  /// In ar, this message translates to:
  /// **'الإشعارات'**
  String get notifications;

  /// No description provided for @schedule.
  ///
  /// In ar, this message translates to:
  /// **'الجدول'**
  String get schedule;

  /// No description provided for @classes.
  ///
  /// In ar, this message translates to:
  /// **'الفصول'**
  String get classes;

  /// No description provided for @settings.
  ///
  /// In ar, this message translates to:
  /// **'الإعدادات'**
  String get settings;

  /// No description provided for @sendChangeLink.
  ///
  /// In ar, this message translates to:
  /// **'ارسل رابط التغيير'**
  String get sendChangeLink;

  /// No description provided for @changePassword.
  ///
  /// In ar, this message translates to:
  /// **'تغيير كلمة السر'**
  String get changePassword;

  /// No description provided for @doYouWantToLogIn.
  ///
  /// In ar, this message translates to:
  /// **'هل تريد تسجيل الدخول؟'**
  String get doYouWantToLogIn;

  /// No description provided for @resetPasswordTitle.
  ///
  /// In ar, this message translates to:
  /// **'إعادة تعيين كلمة السر'**
  String get resetPasswordTitle;

  /// No description provided for @confirmPassword.
  ///
  /// In ar, this message translates to:
  /// **'أعد كتابة كلمة السر الجديدة'**
  String get confirmPassword;

  /// No description provided for @newPassword.
  ///
  /// In ar, this message translates to:
  /// **'كلمة السر الجديدة'**
  String get newPassword;

  /// No description provided for @resetPassword.
  ///
  /// In ar, this message translates to:
  /// **'أعد تعيين كلمة السر '**
  String get resetPassword;

  /// No description provided for @resendCodeNow.
  ///
  /// In ar, this message translates to:
  /// **'أعد إرسال الرمز الآن'**
  String get resendCodeNow;

  /// No description provided for @checkCode.
  ///
  /// In ar, this message translates to:
  /// **'تحقق من الرمز'**
  String get checkCode;

  /// No description provided for @checkPhoneContent.
  ///
  /// In ar, this message translates to:
  /// **'تحقق من رسائل الموبايل وأدخل الرمز المرسل عبر الخانات التالية:'**
  String get checkPhoneContent;

  /// No description provided for @resendCode.
  ///
  /// In ar, this message translates to:
  /// **'أعد إرسال الرمز مرة أخرى بعد {seconds}'**
  String resendCode(String seconds);

  /// No description provided for @comments.
  ///
  /// In ar, this message translates to:
  /// **'التعليقات'**
  String get comments;

  /// No description provided for @addComment.
  ///
  /// In ar, this message translates to:
  /// **'اضافة تعليق'**
  String get addComment;

  /// No description provided for @noComments.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد تعليقات'**
  String get noComments;

  /// No description provided for @newPost.
  ///
  /// In ar, this message translates to:
  /// **'منشور جديد'**
  String get newPost;

  /// No description provided for @newSession.
  ///
  /// In ar, this message translates to:
  /// **'جدول جلسة جديدة'**
  String get newSession;

  /// No description provided for @homework.
  ///
  /// In ar, this message translates to:
  /// **'واجب'**
  String get homework;

  /// No description provided for @writeSomething.
  ///
  /// In ar, this message translates to:
  /// **'اكتب شيئًا...'**
  String get writeSomething;

  /// No description provided for @post.
  ///
  /// In ar, this message translates to:
  /// **'نشر'**
  String get post;

  /// No description provided for @writeToStudents.
  ///
  /// In ar, this message translates to:
  /// **'اكتب شيئًا لطلابك هنا...'**
  String get writeToStudents;

  /// No description provided for @latestPosts.
  ///
  /// In ar, this message translates to:
  /// **'أخر المنشورات'**
  String get latestPosts;

  /// No description provided for @noPosts.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد منشورات بعد'**
  String get noPosts;

  /// No description provided for @joinNow.
  ///
  /// In ar, this message translates to:
  /// **'الانضمام الان'**
  String get joinNow;

  /// No description provided for @activateNotification.
  ///
  /// In ar, this message translates to:
  /// **'فعل الاشعارات'**
  String get activateNotification;

  /// No description provided for @verifyIdentity.
  ///
  /// In ar, this message translates to:
  /// **'التحقق من الهوية'**
  String get verifyIdentity;

  /// No description provided for @holdPhoneSecurely.
  ///
  /// In ar, this message translates to:
  /// **'ثبت الهاتف جيدا'**
  String get holdPhoneSecurely;

  /// No description provided for @takePhoto.
  ///
  /// In ar, this message translates to:
  /// **'التقاط صورة'**
  String get takePhoto;

  /// No description provided for @comparingPhoto.
  ///
  /// In ar, this message translates to:
  /// **'يتم مقارنة الصورة'**
  String get comparingPhoto;

  /// No description provided for @tryAgain.
  ///
  /// In ar, this message translates to:
  /// **'حاول مرة اخرى'**
  String get tryAgain;

  /// No description provided for @within.
  ///
  /// In ar, this message translates to:
  /// **'خلال'**
  String get within;

  /// No description provided for @workingNow.
  ///
  /// In ar, this message translates to:
  /// **'تعمل الان'**
  String get workingNow;

  /// No description provided for @ended.
  ///
  /// In ar, this message translates to:
  /// **'انتهت'**
  String get ended;

  /// No description provided for @explanation.
  ///
  /// In ar, this message translates to:
  /// **'شرح'**
  String get explanation;

  /// No description provided for @homeworkSolution.
  ///
  /// In ar, this message translates to:
  /// **'حل واجب'**
  String get homeworkSolution;

  /// No description provided for @practice.
  ///
  /// In ar, this message translates to:
  /// **'حل تمارين'**
  String get practice;

  /// No description provided for @revision.
  ///
  /// In ar, this message translates to:
  /// **'مراجعة'**
  String get revision;

  /// No description provided for @other.
  ///
  /// In ar, this message translates to:
  /// **'اخرى'**
  String get other;

  /// No description provided for @choose.
  ///
  /// In ar, this message translates to:
  /// **'اختر {value}'**
  String choose(Object value);

  /// No description provided for @sessionTitle.
  ///
  /// In ar, this message translates to:
  /// **'عنوان الجلسة'**
  String get sessionTitle;

  /// No description provided for @noHomework.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد واجبات حالياً'**
  String get noHomework;

  /// No description provided for @successfullyDownloaded.
  ///
  /// In ar, this message translates to:
  /// **'تم التحميل بنجاح'**
  String get successfullyDownloaded;

  /// No description provided for @downloading.
  ///
  /// In ar, this message translates to:
  /// **'يتم التحميل'**
  String get downloading;

  /// No description provided for @more.
  ///
  /// In ar, this message translates to:
  /// **'المزيد'**
  String get more;

  /// No description provided for @logout.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل خروج'**
  String get logout;

  /// No description provided for @profile.
  ///
  /// In ar, this message translates to:
  /// **'الملف الشخصي'**
  String get profile;

  /// No description provided for @waitingForOthersToJoin.
  ///
  /// In ar, this message translates to:
  /// **'بانتظار الاخرين حتى ينضموا'**
  String get waitingForOthersToJoin;
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
