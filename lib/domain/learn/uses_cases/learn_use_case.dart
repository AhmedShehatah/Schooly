import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/use_cases/base_use_case.dart';
import '../../../core/result/result.dart';
import '../enities/learn.dart';
import '../repos/learn_repo.dart';

part 'learn_use_case.freezed.dart';
part 'learn_use_case.g.dart';

class LearnUseCase implements BaseUseCase<List<Learn>, LearnParams> {
  final LearnRepo _repo;
  const LearnUseCase(this._repo);
  @override
  Future<Result<List<Learn>>> call({required LearnParams params}) {
    return _repo.getLearnList(params: params);
  }
}

@Freezed(fromJson: false, toJson: true)
class LearnParams with _$LearnParams {
  const LearnParams._();

  const factory LearnParams({
    @Default(1) int page,
    @Default(20) int pageSize,
  }) = _LearnParams;
}
