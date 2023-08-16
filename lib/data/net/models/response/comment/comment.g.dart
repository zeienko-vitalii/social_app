// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentContainer _$$_CommentContainerFromJson(Map<String, dynamic> json) =>
    _$_CommentContainer(
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Comment>[],
    );

Map<String, dynamic> _$$_CommentContainerToJson(_$_CommentContainer instance) =>
    <String, dynamic>{
      'comments': instance.comments,
    };

_$_Comment _$$_CommentFromJson(Map<String, dynamic> json) => _$_Comment(
      postId: json['postId'] as int,
      id: json['id'] as int,
      name: json['name'] as String?,
      body: json['body'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'id': instance.id,
      'name': instance.name,
      'body': instance.body,
      'email': instance.email,
    };
