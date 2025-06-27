import 'package:freezed_annotation/freezed_annotation.dart';
part 'comment.freezed.dart';

@Freezed(toJson: false, fromJson: false)
class Comment with _$Comment {
  const Comment._();
  const factory Comment({
    required int id,
    required String content,
    required String authorId,
    required String authorName,
    required String createdAt,
    required String? profilePictureUrl,
  }) = _Comment;
}
