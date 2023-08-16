// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PostContainer container) getPost,
    required TResult Function(String? msg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PostContainer container)? getPost,
    TResult? Function(String? msg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PostContainer container)? getPost,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostInitial value) initial,
    required TResult Function(GetPostsState value) getPost,
    required TResult Function(PostError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostInitial value)? initial,
    TResult? Function(GetPostsState value)? getPost,
    TResult? Function(PostError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostInitial value)? initial,
    TResult Function(GetPostsState value)? getPost,
    TResult Function(PostError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res, PostState>;
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res, $Val extends PostState>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostInitialCopyWith<$Res> {
  factory _$$PostInitialCopyWith(
          _$PostInitial value, $Res Function(_$PostInitial) then) =
      __$$PostInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostInitialCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostInitial>
    implements _$$PostInitialCopyWith<$Res> {
  __$$PostInitialCopyWithImpl(
      _$PostInitial _value, $Res Function(_$PostInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostInitial implements PostInitial {
  const _$PostInitial();

  @override
  String toString() {
    return 'PostState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PostContainer container) getPost,
    required TResult Function(String? msg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PostContainer container)? getPost,
    TResult? Function(String? msg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PostContainer container)? getPost,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostInitial value) initial,
    required TResult Function(GetPostsState value) getPost,
    required TResult Function(PostError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostInitial value)? initial,
    TResult? Function(GetPostsState value)? getPost,
    TResult? Function(PostError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostInitial value)? initial,
    TResult Function(GetPostsState value)? getPost,
    TResult Function(PostError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PostInitial implements PostState {
  const factory PostInitial() = _$PostInitial;
}

/// @nodoc
abstract class _$$GetPostsStateCopyWith<$Res> {
  factory _$$GetPostsStateCopyWith(
          _$GetPostsState value, $Res Function(_$GetPostsState) then) =
      __$$GetPostsStateCopyWithImpl<$Res>;
  @useResult
  $Res call({PostContainer container});

  $PostContainerCopyWith<$Res> get container;
}

/// @nodoc
class __$$GetPostsStateCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$GetPostsState>
    implements _$$GetPostsStateCopyWith<$Res> {
  __$$GetPostsStateCopyWithImpl(
      _$GetPostsState _value, $Res Function(_$GetPostsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? container = null,
  }) {
    return _then(_$GetPostsState(
      null == container
          ? _value.container
          : container // ignore: cast_nullable_to_non_nullable
              as PostContainer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PostContainerCopyWith<$Res> get container {
    return $PostContainerCopyWith<$Res>(_value.container, (value) {
      return _then(_value.copyWith(container: value));
    });
  }
}

/// @nodoc

class _$GetPostsState implements GetPostsState {
  const _$GetPostsState(this.container);

  @override
  final PostContainer container;

  @override
  String toString() {
    return 'PostState.getPost(container: $container)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostsState &&
            (identical(other.container, container) ||
                other.container == container));
  }

  @override
  int get hashCode => Object.hash(runtimeType, container);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostsStateCopyWith<_$GetPostsState> get copyWith =>
      __$$GetPostsStateCopyWithImpl<_$GetPostsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PostContainer container) getPost,
    required TResult Function(String? msg) error,
  }) {
    return getPost(container);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PostContainer container)? getPost,
    TResult? Function(String? msg)? error,
  }) {
    return getPost?.call(container);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PostContainer container)? getPost,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (getPost != null) {
      return getPost(container);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostInitial value) initial,
    required TResult Function(GetPostsState value) getPost,
    required TResult Function(PostError value) error,
  }) {
    return getPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostInitial value)? initial,
    TResult? Function(GetPostsState value)? getPost,
    TResult? Function(PostError value)? error,
  }) {
    return getPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostInitial value)? initial,
    TResult Function(GetPostsState value)? getPost,
    TResult Function(PostError value)? error,
    required TResult orElse(),
  }) {
    if (getPost != null) {
      return getPost(this);
    }
    return orElse();
  }
}

abstract class GetPostsState implements PostState {
  const factory GetPostsState(final PostContainer container) = _$GetPostsState;

  PostContainer get container;
  @JsonKey(ignore: true)
  _$$GetPostsStateCopyWith<_$GetPostsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostErrorCopyWith<$Res> {
  factory _$$PostErrorCopyWith(
          _$PostError value, $Res Function(_$PostError) then) =
      __$$PostErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$PostErrorCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$PostError>
    implements _$$PostErrorCopyWith<$Res> {
  __$$PostErrorCopyWithImpl(
      _$PostError _value, $Res Function(_$PostError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$PostError(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PostError implements PostError {
  const _$PostError([this.msg]);

  @override
  final String? msg;

  @override
  String toString() {
    return 'PostState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostError &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostErrorCopyWith<_$PostError> get copyWith =>
      __$$PostErrorCopyWithImpl<_$PostError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PostContainer container) getPost,
    required TResult Function(String? msg) error,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(PostContainer container)? getPost,
    TResult? Function(String? msg)? error,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PostContainer container)? getPost,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostInitial value) initial,
    required TResult Function(GetPostsState value) getPost,
    required TResult Function(PostError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostInitial value)? initial,
    TResult? Function(GetPostsState value)? getPost,
    TResult? Function(PostError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostInitial value)? initial,
    TResult Function(GetPostsState value)? getPost,
    TResult Function(PostError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PostError implements PostState {
  const factory PostError([final String? msg]) = _$PostError;

  String? get msg;
  @JsonKey(ignore: true)
  _$$PostErrorCopyWith<_$PostError> get copyWith =>
      throw _privateConstructorUsedError;
}
