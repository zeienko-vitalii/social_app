// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() finishLoading,
    required TResult Function(CommentContainer commentContainer) getComments,
    required TResult Function(String? msg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? finishLoading,
    TResult? Function(CommentContainer commentContainer)? getComments,
    TResult? Function(String? msg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? finishLoading,
    TResult Function(CommentContainer commentContainer)? getComments,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostCardInitial value) initial,
    required TResult Function(PostCardLoading value) loading,
    required TResult Function(PostCardLoadingFinished value) finishLoading,
    required TResult Function(GetCommentsState value) getComments,
    required TResult Function(PostCardError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostCardInitial value)? initial,
    TResult? Function(PostCardLoading value)? loading,
    TResult? Function(PostCardLoadingFinished value)? finishLoading,
    TResult? Function(GetCommentsState value)? getComments,
    TResult? Function(PostCardError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostCardInitial value)? initial,
    TResult Function(PostCardLoading value)? loading,
    TResult Function(PostCardLoadingFinished value)? finishLoading,
    TResult Function(GetCommentsState value)? getComments,
    TResult Function(PostCardError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCardStateCopyWith<$Res> {
  factory $PostCardStateCopyWith(
          PostCardState value, $Res Function(PostCardState) then) =
      _$PostCardStateCopyWithImpl<$Res, PostCardState>;
}

/// @nodoc
class _$PostCardStateCopyWithImpl<$Res, $Val extends PostCardState>
    implements $PostCardStateCopyWith<$Res> {
  _$PostCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostCardInitialCopyWith<$Res> {
  factory _$$PostCardInitialCopyWith(
          _$PostCardInitial value, $Res Function(_$PostCardInitial) then) =
      __$$PostCardInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostCardInitialCopyWithImpl<$Res>
    extends _$PostCardStateCopyWithImpl<$Res, _$PostCardInitial>
    implements _$$PostCardInitialCopyWith<$Res> {
  __$$PostCardInitialCopyWithImpl(
      _$PostCardInitial _value, $Res Function(_$PostCardInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostCardInitial implements PostCardInitial {
  const _$PostCardInitial();

  @override
  String toString() {
    return 'PostCardState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostCardInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() finishLoading,
    required TResult Function(CommentContainer commentContainer) getComments,
    required TResult Function(String? msg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? finishLoading,
    TResult? Function(CommentContainer commentContainer)? getComments,
    TResult? Function(String? msg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? finishLoading,
    TResult Function(CommentContainer commentContainer)? getComments,
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
    required TResult Function(PostCardInitial value) initial,
    required TResult Function(PostCardLoading value) loading,
    required TResult Function(PostCardLoadingFinished value) finishLoading,
    required TResult Function(GetCommentsState value) getComments,
    required TResult Function(PostCardError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostCardInitial value)? initial,
    TResult? Function(PostCardLoading value)? loading,
    TResult? Function(PostCardLoadingFinished value)? finishLoading,
    TResult? Function(GetCommentsState value)? getComments,
    TResult? Function(PostCardError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostCardInitial value)? initial,
    TResult Function(PostCardLoading value)? loading,
    TResult Function(PostCardLoadingFinished value)? finishLoading,
    TResult Function(GetCommentsState value)? getComments,
    TResult Function(PostCardError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PostCardInitial implements PostCardState {
  const factory PostCardInitial() = _$PostCardInitial;
}

/// @nodoc
abstract class _$$PostCardLoadingCopyWith<$Res> {
  factory _$$PostCardLoadingCopyWith(
          _$PostCardLoading value, $Res Function(_$PostCardLoading) then) =
      __$$PostCardLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostCardLoadingCopyWithImpl<$Res>
    extends _$PostCardStateCopyWithImpl<$Res, _$PostCardLoading>
    implements _$$PostCardLoadingCopyWith<$Res> {
  __$$PostCardLoadingCopyWithImpl(
      _$PostCardLoading _value, $Res Function(_$PostCardLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostCardLoading implements PostCardLoading {
  const _$PostCardLoading();

  @override
  String toString() {
    return 'PostCardState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostCardLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() finishLoading,
    required TResult Function(CommentContainer commentContainer) getComments,
    required TResult Function(String? msg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? finishLoading,
    TResult? Function(CommentContainer commentContainer)? getComments,
    TResult? Function(String? msg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? finishLoading,
    TResult Function(CommentContainer commentContainer)? getComments,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostCardInitial value) initial,
    required TResult Function(PostCardLoading value) loading,
    required TResult Function(PostCardLoadingFinished value) finishLoading,
    required TResult Function(GetCommentsState value) getComments,
    required TResult Function(PostCardError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostCardInitial value)? initial,
    TResult? Function(PostCardLoading value)? loading,
    TResult? Function(PostCardLoadingFinished value)? finishLoading,
    TResult? Function(GetCommentsState value)? getComments,
    TResult? Function(PostCardError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostCardInitial value)? initial,
    TResult Function(PostCardLoading value)? loading,
    TResult Function(PostCardLoadingFinished value)? finishLoading,
    TResult Function(GetCommentsState value)? getComments,
    TResult Function(PostCardError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PostCardLoading implements PostCardState {
  const factory PostCardLoading() = _$PostCardLoading;
}

/// @nodoc
abstract class _$$PostCardLoadingFinishedCopyWith<$Res> {
  factory _$$PostCardLoadingFinishedCopyWith(_$PostCardLoadingFinished value,
          $Res Function(_$PostCardLoadingFinished) then) =
      __$$PostCardLoadingFinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostCardLoadingFinishedCopyWithImpl<$Res>
    extends _$PostCardStateCopyWithImpl<$Res, _$PostCardLoadingFinished>
    implements _$$PostCardLoadingFinishedCopyWith<$Res> {
  __$$PostCardLoadingFinishedCopyWithImpl(_$PostCardLoadingFinished _value,
      $Res Function(_$PostCardLoadingFinished) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostCardLoadingFinished implements PostCardLoadingFinished {
  const _$PostCardLoadingFinished();

  @override
  String toString() {
    return 'PostCardState.finishLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCardLoadingFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() finishLoading,
    required TResult Function(CommentContainer commentContainer) getComments,
    required TResult Function(String? msg) error,
  }) {
    return finishLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? finishLoading,
    TResult? Function(CommentContainer commentContainer)? getComments,
    TResult? Function(String? msg)? error,
  }) {
    return finishLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? finishLoading,
    TResult Function(CommentContainer commentContainer)? getComments,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (finishLoading != null) {
      return finishLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostCardInitial value) initial,
    required TResult Function(PostCardLoading value) loading,
    required TResult Function(PostCardLoadingFinished value) finishLoading,
    required TResult Function(GetCommentsState value) getComments,
    required TResult Function(PostCardError value) error,
  }) {
    return finishLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostCardInitial value)? initial,
    TResult? Function(PostCardLoading value)? loading,
    TResult? Function(PostCardLoadingFinished value)? finishLoading,
    TResult? Function(GetCommentsState value)? getComments,
    TResult? Function(PostCardError value)? error,
  }) {
    return finishLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostCardInitial value)? initial,
    TResult Function(PostCardLoading value)? loading,
    TResult Function(PostCardLoadingFinished value)? finishLoading,
    TResult Function(GetCommentsState value)? getComments,
    TResult Function(PostCardError value)? error,
    required TResult orElse(),
  }) {
    if (finishLoading != null) {
      return finishLoading(this);
    }
    return orElse();
  }
}

abstract class PostCardLoadingFinished implements PostCardState {
  const factory PostCardLoadingFinished() = _$PostCardLoadingFinished;
}

/// @nodoc
abstract class _$$GetCommentsStateCopyWith<$Res> {
  factory _$$GetCommentsStateCopyWith(
          _$GetCommentsState value, $Res Function(_$GetCommentsState) then) =
      __$$GetCommentsStateCopyWithImpl<$Res>;
  @useResult
  $Res call({CommentContainer commentContainer});

  $CommentContainerCopyWith<$Res> get commentContainer;
}

/// @nodoc
class __$$GetCommentsStateCopyWithImpl<$Res>
    extends _$PostCardStateCopyWithImpl<$Res, _$GetCommentsState>
    implements _$$GetCommentsStateCopyWith<$Res> {
  __$$GetCommentsStateCopyWithImpl(
      _$GetCommentsState _value, $Res Function(_$GetCommentsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentContainer = null,
  }) {
    return _then(_$GetCommentsState(
      null == commentContainer
          ? _value.commentContainer
          : commentContainer // ignore: cast_nullable_to_non_nullable
              as CommentContainer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentContainerCopyWith<$Res> get commentContainer {
    return $CommentContainerCopyWith<$Res>(_value.commentContainer, (value) {
      return _then(_value.copyWith(commentContainer: value));
    });
  }
}

/// @nodoc

class _$GetCommentsState implements GetCommentsState {
  const _$GetCommentsState(this.commentContainer);

  @override
  final CommentContainer commentContainer;

  @override
  String toString() {
    return 'PostCardState.getComments(commentContainer: $commentContainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommentsState &&
            (identical(other.commentContainer, commentContainer) ||
                other.commentContainer == commentContainer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentContainer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentsStateCopyWith<_$GetCommentsState> get copyWith =>
      __$$GetCommentsStateCopyWithImpl<_$GetCommentsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() finishLoading,
    required TResult Function(CommentContainer commentContainer) getComments,
    required TResult Function(String? msg) error,
  }) {
    return getComments(commentContainer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? finishLoading,
    TResult? Function(CommentContainer commentContainer)? getComments,
    TResult? Function(String? msg)? error,
  }) {
    return getComments?.call(commentContainer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? finishLoading,
    TResult Function(CommentContainer commentContainer)? getComments,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (getComments != null) {
      return getComments(commentContainer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostCardInitial value) initial,
    required TResult Function(PostCardLoading value) loading,
    required TResult Function(PostCardLoadingFinished value) finishLoading,
    required TResult Function(GetCommentsState value) getComments,
    required TResult Function(PostCardError value) error,
  }) {
    return getComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostCardInitial value)? initial,
    TResult? Function(PostCardLoading value)? loading,
    TResult? Function(PostCardLoadingFinished value)? finishLoading,
    TResult? Function(GetCommentsState value)? getComments,
    TResult? Function(PostCardError value)? error,
  }) {
    return getComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostCardInitial value)? initial,
    TResult Function(PostCardLoading value)? loading,
    TResult Function(PostCardLoadingFinished value)? finishLoading,
    TResult Function(GetCommentsState value)? getComments,
    TResult Function(PostCardError value)? error,
    required TResult orElse(),
  }) {
    if (getComments != null) {
      return getComments(this);
    }
    return orElse();
  }
}

abstract class GetCommentsState implements PostCardState {
  const factory GetCommentsState(final CommentContainer commentContainer) =
      _$GetCommentsState;

  CommentContainer get commentContainer;
  @JsonKey(ignore: true)
  _$$GetCommentsStateCopyWith<_$GetCommentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostCardErrorCopyWith<$Res> {
  factory _$$PostCardErrorCopyWith(
          _$PostCardError value, $Res Function(_$PostCardError) then) =
      __$$PostCardErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$PostCardErrorCopyWithImpl<$Res>
    extends _$PostCardStateCopyWithImpl<$Res, _$PostCardError>
    implements _$$PostCardErrorCopyWith<$Res> {
  __$$PostCardErrorCopyWithImpl(
      _$PostCardError _value, $Res Function(_$PostCardError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$PostCardError(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PostCardError implements PostCardError {
  const _$PostCardError([this.msg]);

  @override
  final String? msg;

  @override
  String toString() {
    return 'PostCardState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCardError &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCardErrorCopyWith<_$PostCardError> get copyWith =>
      __$$PostCardErrorCopyWithImpl<_$PostCardError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() finishLoading,
    required TResult Function(CommentContainer commentContainer) getComments,
    required TResult Function(String? msg) error,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? finishLoading,
    TResult? Function(CommentContainer commentContainer)? getComments,
    TResult? Function(String? msg)? error,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? finishLoading,
    TResult Function(CommentContainer commentContainer)? getComments,
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
    required TResult Function(PostCardInitial value) initial,
    required TResult Function(PostCardLoading value) loading,
    required TResult Function(PostCardLoadingFinished value) finishLoading,
    required TResult Function(GetCommentsState value) getComments,
    required TResult Function(PostCardError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostCardInitial value)? initial,
    TResult? Function(PostCardLoading value)? loading,
    TResult? Function(PostCardLoadingFinished value)? finishLoading,
    TResult? Function(GetCommentsState value)? getComments,
    TResult? Function(PostCardError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostCardInitial value)? initial,
    TResult Function(PostCardLoading value)? loading,
    TResult Function(PostCardLoadingFinished value)? finishLoading,
    TResult Function(GetCommentsState value)? getComments,
    TResult Function(PostCardError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PostCardError implements PostCardState {
  const factory PostCardError([final String? msg]) = _$PostCardError;

  String? get msg;
  @JsonKey(ignore: true)
  _$$PostCardErrorCopyWith<_$PostCardError> get copyWith =>
      throw _privateConstructorUsedError;
}
