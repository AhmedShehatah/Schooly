import 'package:freezed_annotation/freezed_annotation.dart';

import '../comment/comment.dart';
part 'post.freezed.dart';

@freezed
class Post with _$Post {
  const Post._();
  const factory Post({
    required String content,
    required String createdAt,
    required String authorName,
    required int id,
    required String? profilePictureUrl,
    required List<Comment> comments,
  }) = _Post;
}
