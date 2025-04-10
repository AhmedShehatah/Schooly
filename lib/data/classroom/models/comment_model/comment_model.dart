import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/classroom/entities/comment/comment.dart';
part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const CommentModel._();
  const factory CommentModel({
    required int id,
    required String content,
    required String authorId,
    required String authorName,
    required String createdAt,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  Comment toEntity() => Comment(
      id: id,
      content: content,
      authorId: authorId,
      authorName: authorName,
      createdAt: createdAt);
}

/**
 * 
 * 
 * 
 *  "id": 44,
          "content": "COMMMMMMMMMMMMENT",
          "authorId": "640cdc09-f98f-4f01-9060-1f39fcc50ccb",
          "authorName": "string",
          "createdAt": "2025-03-26T08:06:51.2970945"
 */