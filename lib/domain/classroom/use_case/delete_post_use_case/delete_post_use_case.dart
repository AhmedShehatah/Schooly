import '../../../../core/domain/use_cases/base_use_case.dart';
import '../../../../core/result/result.dart';
import '../../repo/classroom_repo.dart';

class DeletePostUseCase implements BaseUseCase<void, String> {
  final ClassroomRepo _classroomRepo;
  DeletePostUseCase(this._classroomRepo);

  @override
  Future<Result<void>> call({required String params}) {
    return _classroomRepo.deletePost(id: params);
  }
}
