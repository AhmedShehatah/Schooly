import '../../../../core/domain/use_cases/base_use_case.dart';
import '../../../../core/result/result.dart';
import '../../entities/classroom/classroom.dart';
import '../../repo/classroom_repo.dart';

class GetClassroomsUseCase implements BaseUseCase<List<Classroom>, void> {
  final ClassroomRepo _classroomRepository;

  GetClassroomsUseCase(this._classroomRepository);

  @override
  Future<Result<List<Classroom>>> call({required void params}) {
    return _classroomRepository.getClassrooms();
  }
}
