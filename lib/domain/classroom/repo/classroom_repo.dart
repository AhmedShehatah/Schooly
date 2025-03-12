import '../../../core/result/result.dart';
import '../entities/post/post.dart';

abstract class ClassroomRepo {
  Future<Result<List<Post>>> getPosts();
}
