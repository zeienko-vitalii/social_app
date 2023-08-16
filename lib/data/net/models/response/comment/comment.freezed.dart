// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentContainer _$CommentContainerFromJson(Map<String, dynamic> json) {
  return _CommentContainer.fromJson(json);
}

/// @nodoc
mixin _$CommentContainer {
  List<Comment> get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentContainerCopyWith<CommentContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentContainerCopyWith<$Res> {
  factory $CommentContainerCopyWith(
          CommentContainer value, $Res Function(CommentContainer) then) =
      _$CommentContainerCopyWithImpl<$Res, CommentContainer>;
  @useResult
  $Res call({List<Comment> comments});
}

/// @nodoc
class _$CommentContainerCopyWithImpl<$Res, $Val extends CommentContainer>
    implements $CommentContainerCopyWith<$Res> {
  _$CommentContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentContainerCopyWith<$Res>
    implements $CommentContainerCopyWith<$Res> {
  factory _$$_CommentContainerCopyWith(
          _$_CommentContainer value, $Res Function(_$_CommentContainer) then) =
      __$$_CommentContainerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Comment> comments});
}

/// @nodoc
class __$$_CommentContainerCopyWithImpl<$Res>
    extends _$CommentContainerCopyWithImpl<$Res, _$_CommentContainer>
    implements _$$_CommentContainerCopyWith<$Res> {
  __$$_CommentContainerCopyWithImpl(
      _$_CommentContainer _value, $Res Function(_$_CommentContainer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$_CommentContainer(
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentContainer implements _CommentContainer {
  const _$_CommentContainer({final List<Comment> comments = const <Comment>[]})
      : _comments = comments;

  factory _$_CommentContainer.fromJson(Map<String, dynamic> json) =>
      _$$_CommentContainerFromJson(json);

  final List<Comment> _comments;
  @override
  @JsonKey()
  List<Comment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'CommentContainer(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentContainer &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentContainerCopyWith<_$_CommentContainer> get copyWith =>
      __$$_CommentContainerCopyWithImpl<_$_CommentContainer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentContainerToJson(
      this,
    );
  }
}

abstract class _CommentContainer implements CommentContainer {
  const factory _CommentContainer({final List<Comment> comments}) =
      _$_CommentContainer;

  factory _CommentContainer.fromJson(Map<String, dynamic> json) =
      _$_CommentContainer.fromJson;

  @override
  List<Comment> get comments;
  @override
  @JsonKey(ignore: true)
  _$$_CommentContainerCopyWith<_$_CommentContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  int get postId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call({int postId, int id, String? name, String? body, String? email});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? id = null,
    Object? name = freezed,
    Object? body = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$_CommentCopyWith(
          _$_Comment value, $Res Function(_$_Comment) then) =
      __$$_CommentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int postId, int id, String? name, String? body, String? email});
}

/// @nodoc
class __$$_CommentCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$_Comment>
    implements _$$_CommentCopyWith<$Res> {
  __$$_CommentCopyWithImpl(_$_Comment _value, $Res Function(_$_Comment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? id = null,
    Object? name = freezed,
    Object? body = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_Comment(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comment implements _Comment {
  const _$_Comment(
      {required this.postId,
      required this.id,
      this.name,
      this.body,
      this.email});

  factory _$_Comment.fromJson(Map<String, dynamic> json) =>
      _$$_CommentFromJson(json);

  @override
  final int postId;
  @override
  final int id;
  @override
  final String? name;
  @override
  final String? body;
  @override
  final String? email;

  @override
  String toString() {
    return 'Comment(postId: $postId, id: $id, name: $name, body: $body, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comment &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postId, id, name, body, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      __$$_CommentCopyWithImpl<_$_Comment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {required final int postId,
      required final int id,
      final String? name,
      final String? body,
      final String? email}) = _$_Comment;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$_Comment.fromJson;

  @override
  int get postId;
  @override
  int get id;
  @override
  String? get name;
  @override
  String? get body;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}
