import '../../../../core/domain/use_cases/base_use_case.dart';
import '../../../../core/result/result.dart';
import '../../repo/classroom_repo.dart';

class DeleteCommentUseCase implements BaseUseCase<void, String> {
  final ClassroomRepo _classroomRepo;
  DeleteCommentUseCase(this._classroomRepo);

  @override
  Future<Result<void>> call({required String params}) {
    return _classroomRepo.deleteComment(id: params);
  }
}
