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
}
