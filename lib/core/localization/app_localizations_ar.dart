import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get requestCancelled => 'تم إلغاء الطلب إلى الخادم';

  @override
  String get connectionTimeout => 'انتهت مهلة الاتصال بالخادم';

  @override
  String get receiveTimeout => 'انتهت مهلة استلام الاتصال بالخادم';

  @override
  String get sendTimeout => 'انتهت مهلة إرسال الاتصال للخادم';

  @override
  String get connectionError => 'لا يوجد اتصال بالانترنت';

  @override
  String get unknownError => 'حدث خطأ غير متوقع';

  @override
  String get serverError => 'حدث خطأ في الخادم';

  @override
  String get badCertificate => 'خطأ في الشهادة الأمنية';

  @override
  String get sessionExpired => 'لقد انتهت الجلسة';

  @override
  String get password => 'كلمة المرور';

  @override
  String get identityNumberValidation => 'رقم الهوية يجب أن لا يقل عن ٧ أرقام';

  @override
  String mustEnter(Object value) {
    return 'يجب ادخال $value';
  }

  @override
  String get mustLogin => 'يجب عليك تسجيل الدخول';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get forgotPassword => 'هل نسيت كلمة السر؟';

  @override
  String get invalidPhoneNumber => 'رقم الجوال غير صحيح';

  @override
  String get nationalId => 'رقم الهوية';

  @override
  String get country => 'الدولة';

  @override
  String get chooseCountry => 'اختر الدولة';

  @override
  String get phoneNumber => 'رقم الجوال';

  @override
  String get invalidEmail => 'البريد الالكتروني غير صحيح';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get otpValidation => 'يجب ان يكون رقم التحقق المكون من ٤ ارقام';

  @override
  String get yourUpcomingClasses => 'حصصك القادمة';

  @override
  String get all => 'الكل';

  @override
  String nSeconds(int second) {
    String _temp0 = intl.Intl.pluralLogic(
      second,
      locale: localeName,
      other: '$second ثانية',
      many: '$second ثانية',
      few: '$second ثوانٍ',
      two: 'ثانيتين',
      one: 'ثانية',
      zero: '٠ ثوانٍ',
    );
    return '$_temp0';
  }

  @override
  String nMinutes(int minute) {
    String _temp0 = intl.Intl.pluralLogic(
      minute,
      locale: localeName,
      other: '$minute دقيقة',
      many: '$minute دقيقة',
      few: '$minute دقائق',
      two: 'دقيقتين',
      one: 'دقيقة',
      zero: '٠ دقائق',
    );
    return '$_temp0';
  }

  @override
  String nHours(int hour) {
    String _temp0 = intl.Intl.pluralLogic(
      hour,
      locale: localeName,
      other: '$hour ساعة',
      many: '$hour ساعة',
      few: '$hour ساعات',
      two: 'ساعتين',
      one: 'ساعة',
      zero: '٠ ساعات',
    );
    return '$_temp0';
  }

  @override
  String nDays(int day) {
    String _temp0 = intl.Intl.pluralLogic(
      day,
      locale: localeName,
      other: '$day يوم',
      many: '$day يوم',
      few: '$day أيام',
      two: 'يومين',
      one: 'يوم',
      zero: '٠ أيام',
    );
    return '$_temp0';
  }

  @override
  String nMonths(int month) {
    String _temp0 = intl.Intl.pluralLogic(
      month,
      locale: localeName,
      other: '$month شهر',
      many: '$month شهر',
      few: '$month أشهر',
      two: 'شهرين',
      one: 'شهر',
      zero: '٠ أشهر',
    );
    return '$_temp0';
  }

  @override
  String nYears(int year) {
    String _temp0 = intl.Intl.pluralLogic(
      year,
      locale: localeName,
      other: '$year سنة',
      many: '$year سنة',
      few: '$year سنوات',
      two: 'سنتين',
      one: 'سنة',
      zero: '٠ سنوات',
    );
    return '$_temp0';
  }

  @override
  String get teacher => 'المعلم';

  @override
  String get lessonType => 'نوع الجلسة';

  @override
  String get date => 'التاريخ';

  @override
  String get from => 'من';

  @override
  String get to => 'الى';

  @override
  String get yourSchool => 'مَدرستك';

  @override
  String get schooly => 'سكولي';

  @override
  String get inYourBucket => 'في جيبك';

  @override
  String get digitalTeachingIsFuture => 'التعليم الرقمي هو الطريق للمستقبل.';

  @override
  String get schoolyIsLinkWithAi => 'بتوصل بينك وبين مدرستك بأحدث تقنيات الذكاء الاصطناعي.';

  @override
  String get startNow => 'ابدا دلوقتي!';

  @override
  String get home => 'الرئيسية';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get schedule => 'الجدول';

  @override
  String get classes => 'الفصول';

  @override
  String get settings => 'الإعدادات';
}
