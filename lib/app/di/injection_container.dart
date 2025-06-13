import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/cubits/media_download_cubit.dart';
import '../../core/cubits/user_cubit.dart';
import '../../core/localization/localization_manager.dart';
import '../../core/network/network_setup.dart';
import '../../core/shared_preferences/shared_prefs.dart';
import '../../core/theme/app_theme.dart';
import '../../core/utils/validators.dart';

import '../../data/classroom/data_sources/classroom_remote_data_source.dart';
import '../../data/classroom/repos/classroom_repo_impl.dart';
import '../../data/homework/data_sources/homework_remote_data_source.dart';
import '../../data/homework/repos/homework_repo_impl.dart';
import '../../data/media/data_source/media_remote_data_source.dart';
import '../../data/media/repos/media_repo_imp.dart';
import '../../data/upcoming_classes/data_sources/upcoming_classes_remote_data_source.dart';
import '../../data/upcoming_classes/repos/upcoming_classes_repo_impl.dart';
import '../../domain/auth/use_cases/check_otp_use_case/check_otp_use_case.dart';
import '../../domain/auth/use_cases/forget_password_use_case/forget_password_use_case.dart';
import '../../domain/auth/use_cases/reset_password_use_case/reset_password_use_case.dart';
import '../../domain/classroom/repo/classroom_repo.dart';
import '../../domain/classroom/use_case/add_comment_use_case/add_comment_use_case.dart';
import '../../domain/classroom/use_case/add_new_session_use_case/add_new_session_use_case.dart';
import '../../domain/classroom/use_case/add_post_use_case/add_post_use_case.dart';
import '../../domain/classroom/use_case/delete_comment_use_case/delete_comment_use_case.dart';
import '../../domain/classroom/use_case/delete_post_use_case/delete_post_use_case.dart';
import '../../domain/classroom/use_case/get_classrooms_use_case/get_classrooms_use_case.dart';
import '../../domain/classroom/use_case/get_comments_use_case/get_comment_use_case.dart';
import '../../domain/classroom/use_case/get_posts_use_case/get_posts_use_case.dart';
import '../../domain/homework/repos/homework_repo.dart';
import '../../domain/homework/use_cases/homework_use_case.dart';
import '../../domain/media/repo/media_repository.dart';
import '../../domain/media/use_cases/download_file_use_case.dart';
import '../../domain/media/use_cases/upload_file_use_case.dart';
import '../../domain/upcoming_classes/repos/upcoming_classes_repo.dart';
import '../../domain/upcoming_classes/use_cases/join_session_use_case/join_session_use_case.dart';
import '../../domain/upcoming_classes/use_cases/upcoming_classes/upcoming_classes_use_case.dart';
import '../../presentation/auth/forget_password/cubit/forget_password_cubit.dart';
import '../../presentation/auth/reset_password/cubit/reset_password_cubit.dart';
import '../../presentation/auth/verify_code/cubit/check_otp_cubit.dart';
import '../../presentation/classrooms/cubits/classroom_list_cubit.dart';
import '../../presentation/homework/cubit/homework_cubit.dart';
import '../../presentation/lesson_meeting/cubits/camera_cubit.dart';
import '../../presentation/lesson_meeting/cubits/join_meeting_cubit.dart';
import '../../presentation/main/cubits/bottom_navigation_cubit.dart';
import '../../presentation/post/cubits/add_comment_cubit.dart';
import '../../presentation/post/cubits/add_post_cubit.dart';
import '../../presentation/post/cubits/add_session_cubit.dart';
import '../../presentation/post/cubits/posts_list_cubit.dart';
import '../../presentation/home/cubit/upcoming_classes_cubit.dart';

import '../../data/auth/remote/auth_remote_data_source.dart';
import '../../data/auth/repo/auth_repo_impl.dart';
import '../../domain/auth/repo/auth_repo.dart';
import '../../domain/auth/use_cases/login_use_case/login_use_case.dart';
import '../../presentation/auth/login/cubit/login_cubit.dart';
import '../route_manager/app_router.dart';

final sl = GetIt.instance;

Future<void> init() async {
// cubits
  sl.registerLazySingleton(() => LoginCubit(sl()));
  sl.registerLazySingleton(() => UpcomingClassesCubit(sl()));
  sl.registerLazySingleton(() => JoinMeetingCubit(sl()));
  sl.registerLazySingleton(() => ForgetPasswordCubit(sl()));
  sl.registerLazySingleton(() => ResetPasswordCubit(sl()));
  sl.registerLazySingleton(() => CheckOtpCubit(sl()));
  sl.registerLazySingleton(() => ClassroomListCubit(sl()));
  sl.registerLazySingleton(() => PostsListCubit(sl()));
  sl.registerLazySingleton(() => AddPostCubit(sl()));
  sl.registerLazySingleton(() => AddCommentCubit(sl()));
  sl.registerLazySingleton(() => AddSessionCubit(sl()));
  sl.registerLazySingleton(() => HomeworkCubit(sl()));
  sl.registerLazySingleton(
      () => DownloadAttachmentCubit(downloadFileUseCase: sl()));

  //! useCases

  sl.registerLazySingleton(() => LoginUseCase(sl()));
  sl.registerLazySingleton(() => UpcomingClassesUseCase(sl()));
  sl.registerLazySingleton(() => CheckOtpUseCase(sl()));
  sl.registerLazySingleton(() => JoinSessionUseCase(sl()));
  sl.registerLazySingleton(() => ForgetPasswordUseCase(sl()));
  sl.registerLazySingleton(() => ResetPasswordUseCase(sl()));
  sl.registerLazySingleton(() => AddCommentUseCase(sl()));
  sl.registerLazySingleton(() => AddPostUseCase(sl()));
  sl.registerLazySingleton(() => DeletePostUseCase(sl()));
  sl.registerLazySingleton(() => DeleteCommentUseCase(sl()));
  sl.registerLazySingleton(() => GetClassroomsUseCase(sl()));
  sl.registerLazySingleton(() => GetPostsUseCase(sl()));
  sl.registerLazySingleton(() => GetCommentUseCase(sl()));
  sl.registerLazySingleton(() => AddNewSessionUseCase(sl()));
  sl.registerLazySingleton(() => HomeworkUseCase(sl()));
  sl.registerLazySingleton(() => DownloadFileUseCase(mediaRepository: sl()));
  sl.registerLazySingleton(() => UploadUseCase(mediaRepository: sl()));

  //! repos
  sl.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(sl()));
  sl.registerLazySingleton<UpcomingClassesRepo>(
      () => UpcomingClassesRepoImpl(sl()));
  sl.registerLazySingleton<ClassroomRepo>(() => ClassroomRepoImpl(sl()));
  sl.registerLazySingleton<HomeworkRepo>(() => HomeworkRepoImpl(sl()));
  sl.registerLazySingleton<MediaRepository>(
      () => MediaRepositoryImpl(mediaRemoteDataSource: sl()));

  //! data sources
  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<UpcomingClassesRemoteDataSource>(
      () => UpcomingClassesRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<ClassroomRemoteDataSource>(
      () => ClassroomRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<HomeworkRemoteDataSource>(
      () => HomeworkRemoteDataSourceImpl(sl()));
  sl.registerLazySingleton<MediaRemoteDataSource>(
      () => MediaRemoteDataSourceImpl(sl()));

  // core
  sl.registerSingleton(BottomNavigationCubit());
  sl.registerSingleton(const FlutterSecureStorage());
  sl.registerSingleton(await SharedPreferences.getInstance());
  sl.registerSingleton(SharedPrefs(sl(), sl()));
  sl.registerSingleton(UserCubit(sl()));
  sl.registerSingleton(LocaleCubit());
  sl.registerSingleton(createDio());
  sl.registerLazySingleton(() => AppRouter());
  sl.registerLazySingleton(() => CameraCubit());
  sl.registerSingleton(AppTheme());
  sl.registerLazySingleton(() => Validators());
}
