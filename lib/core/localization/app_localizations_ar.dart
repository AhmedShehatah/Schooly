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
}
