import '../../../core/result/result.dart';
import '../../homework/use_cases/add_homework_use_case/add_homework_use_case.dart';
import '../../lookups/entities/lesson.dart';
import '../../lookups/use_cases/get_lessons_use_case/get_lessons_use_case.dart';
import '../entities/classroom/classroom.dart';
import '../entities/comment/comment.dart';
import '../entities/post/post.dart';
import '../use_case/add_comment_use_case/add_comment_use_case.dart';
import '../use_case/add_new_session_use_case/add_new_session_use_case.dart';
import '../use_case/add_post_use_case/add_post_use_case.dart';
import '../use_case/get_comments_use_case/get_comment_use_case.dart';
import '../use_case/get_posts_use_case/get_posts_use_case.dart';

abstract class ClassroomRepo {
  Future<Result<List<Post>>> getPosts({required GetPostParams params});
  Future<Result<void>> addPost({required AddPostParams params});
  Future<Result<void>> addComment({required AddCommentParams params});
  Future<Result<void>> deleteComment({required String id});
  Future<Result<void>> deletePost({required String id});
  Future<Result<List<Comment>>> getPostComments(
      {required GetCommentParams params});
  Future<Result<List<Classroom>>> getClassrooms();
  Future<Result<void>> addSession({required AddNewSessionParams params});
  Future<Result<void>> addHomework({required AddHomeworkParams params});

  Future<Result<List<Lesson>>> getLessons({required GetLessonsParams params});
}
