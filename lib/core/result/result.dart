import 'package:fpdart/fpdart.dart';

import '../network/failure/failure.dart';

typedef Result<T> = Either<Failure, T>;
