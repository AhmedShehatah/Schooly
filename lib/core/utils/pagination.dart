import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../network/failure/failure.dart';

mixin Pagination<T> {
  final controller = PagingController<int, T>(firstPageKey: 1);
  Failure get error {
    assert(controller.error != null);
    return controller.error;
  }

  void fetch() {
    controller.refresh();
  }
}
