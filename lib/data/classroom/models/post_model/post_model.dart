import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/classroom/entities/post/post.dart';
import '../comment_model/comment_model.dart';
part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const PostModel._();
  const factory PostModel({
    required String content,
    required String createdAt,
    required String authorName,
    required int id,
    required String? profilePictureUrl,
    required List<CommentModel> comments,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
  Post toEntity() => Post(
      content: content,
      createdAt: createdAt,
      authorName: authorName,
      id: id,
      profilePictureUrl: profilePictureUrl,
      comments: comments.map((e) => e.toEntity()).toList());
}
