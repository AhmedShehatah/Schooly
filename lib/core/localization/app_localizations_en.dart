// ignore: unused_import
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
  String get yourClasses => 'Your Classes';

  @override
  String get hello => 'Hello 👋';

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

  @override
  String get home => 'Home';

  @override
  String get notifications => 'Notifications';

  @override
  String get schedule => 'Schedule';

  @override
  String get classes => 'Classes';

  @override
  String get settings => 'Settings';

  @override
  String get sendChangeLink => 'Send change link';

  @override
  String get changePassword => 'Change Password';

  @override
  String get doYouWantToLogIn => 'هل تريد تسجيل الدخول؟';

  @override
  String get resetPasswordTitle => 'Reset Password';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get newPassword => 'New Password';

  @override
  String get resetPassword => 'Reset password';

  @override
  String get resendCodeNow => 'Resend Code Now';

  @override
  String get checkCode => 'Check the code';

  @override
  String get checkPhoneContent => 'Check your mobile messages and enter the code sent through the following boxes:';

  @override
  String resendCode(String seconds) {
    return 'Send the code again after $seconds';
  }

  @override
  String get comments => 'Comments';

  @override
  String get addComment => 'Add comment';

  @override
  String get noComments => 'No Comments';

  @override
  String get newPost => 'New Post';

  @override
  String get newSession => 'Schedule New Session';

  @override
  String get homework => 'Homework';

  @override
  String get writeSomething => 'Write something...';

  @override
  String get post => 'Post';

  @override
  String get writeToStudents => 'Write something to your students here...';

  @override
  String get latestPosts => 'Latest Posts';

  @override
  String get noPosts => 'There are no posts yet';

  @override
  String get joinNow => 'Join Now';

  @override
  String get activateNotification => 'Activate Notification';

  @override
  String get verifyIdentity => 'Verify Identity';

  @override
  String get holdPhoneSecurely => 'Hold your phone securely';

  @override
  String get takePhoto => 'Take A Photo';

  @override
  String get comparingPhoto => 'يتم مقارنة الصورة';

  @override
  String get tryAgain => 'Try again';

  @override
  String get within => 'Within';

  @override
  String get workingNow => 'Working Now';

  @override
  String get ended => 'Ended';

  @override
  String get explanation => 'Explanation';

  @override
  String get homeworkSolution => 'Homework Solution';

  @override
  String get practice => 'Practice';

  @override
  String get revision => 'Revision';

  @override
  String get other => 'Other';

  @override
  String choose(Object value) {
    return 'Choose $value';
  }

  @override
  String get sessionTitle => 'Session Title';

  @override
  String get noHomework => 'There are no assignments at the moment';

  @override
  String get successfullyDownloaded => 'Successfully downloaded';

  @override
  String get downloading => 'Downloading';

  @override
  String get more => 'More';

  @override
  String get logout => 'Logout';

  @override
  String get profile => 'Profile';

  @override
  String get waitingForOthersToJoin => 'Waiting for others to join';

  @override
  String get downloadHomework => 'Download';

  @override
  String get submitHomework => 'Submit';

  @override
  String get pleaseChooseFile => 'Please choose a File';

  @override
  String get homeworkUploaded => 'Homework uploaded';

  @override
  String get chooseFile => 'Choose file';

  @override
  String get fileUploadedSuccesfully => 'File Uploaded Successfully';

  @override
  String get failedUpload => 'Failed to Upload';

  @override
  String get deadline => 'Deadline';

  @override
  String get submittedHomeworks => 'Submitted Homeworks';

  @override
  String get noSubmittedHomeworksYet => 'No Homeworks Submitted Yet !';

  @override
  String get submitted => 'Submitted';

  @override
  String get notSubmitted => 'Not Submitted';

  @override
  String get active => 'Active';

  @override
  String get completed => 'Completed';

  @override
  String get fileName => 'file name';

  @override
  String get studentName => 'Student Name';

  @override
  String get submitDate => 'Submitted at';

  @override
  String get posts => 'Posts';

  @override
  String get homeworks => 'Homeworks';

  @override
  String get sessions => 'Sessions';

  @override
  String get lesson => 'Lesson';

  @override
  String get resubmitHomework => 'Re-Submit';
}
