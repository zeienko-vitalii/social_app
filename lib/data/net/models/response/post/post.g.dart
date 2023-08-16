// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostContainer _$$_PostContainerFromJson(Map<String, dynamic> json) =>
    _$_PostContainer(
      posts: (json['posts'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostContainerToJson(_$_PostContainer instance) =>
    <String, dynamic>{
      'posts': instance.posts,
    };

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
