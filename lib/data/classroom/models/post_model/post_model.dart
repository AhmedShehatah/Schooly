import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/classroom/entities/post/post.dart';
part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const PostModel._();
  const factory PostModel({
    required String content,
    required String createdAt,
    required int id,
    required List<dynamic> comments,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
  Post toEntity() =>
      Post(content: content, createdAt: createdAt, id: id, comments: comments);
}



/**
 * 
 * 
 * 
 *    {
      "id": 1,
      "content": "string",
      "comments": [],
      "createdAt": "2025-03-08T08:03:53.0999759"
    
 * }
 */