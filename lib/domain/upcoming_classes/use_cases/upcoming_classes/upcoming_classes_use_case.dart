import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/domain/use_cases/base_use_case.dart';
import '../../../../core/result/result.dart';
import '../../entities/upcoming_classes/upcoming_classes.dart';
import '../../repos/upcoming_classes_repo.dart';
part 'upcoming_classes_use_case.freezed.dart';
part 'upcoming_classes_use_case.g.dart';

class UpcomingClassesUseCase
    implements BaseUseCase<List<UpcomingClasses>, UpcomingClassesParams> {
  final UpcomingClassesRepo _repo;
  const UpcomingClassesUseCase(this._repo);

  @override
  Future<Result<List<UpcomingClasses>>> call(
      {required UpcomingClassesParams params}) {
    return _repo.getUpcomingClasses(params: params);
  }
}

@Freezed(fromJson: false, toJson: true)
class UpcomingClassesParams with _$UpcomingClassesParams {
  const UpcomingClassesParams._();
  const factory UpcomingClassesParams({
    @Default(1) int page,
    @Default(20) int pageSize,
  }) = _UpcomingClassesParams;
}
