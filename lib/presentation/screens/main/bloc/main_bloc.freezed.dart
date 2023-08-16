// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserContainer userContainer) getUsers,
    required TResult Function(String? msg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserContainer userContainer)? getUsers,
    TResult? Function(String? msg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserContainer userContainer)? getUsers,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainInitial value) initial,
    required TResult Function(GetUsersState value) getUsers,
    required TResult Function(MainError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainInitial value)? initial,
    TResult? Function(GetUsersState value)? getUsers,
    TResult? Function(MainError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainInitial value)? initial,
    TResult Function(GetUsersState value)? getUsers,
    TResult Function(MainError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainInitialCopyWith<$Res> {
  factory _$$MainInitialCopyWith(
          _$MainInitial value, $Res Function(_$MainInitial) then) =
      __$$MainInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainInitialCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainInitial>
    implements _$$MainInitialCopyWith<$Res> {
  __$$MainInitialCopyWithImpl(
      _$MainInitial _value, $Res Function(_$MainInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainInitial implements MainInitial {
  const _$MainInitial();

  @override
  String toString() {
    return 'MainState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserContainer userContainer) getUsers,
    required TResult Function(String? msg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserContainer userContainer)? getUsers,
    TResult? Function(String? msg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserContainer userContainer)? getUsers,
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
    required TResult Function(MainInitial value) initial,
    required TResult Function(GetUsersState value) getUsers,
    required TResult Function(MainError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainInitial value)? initial,
    TResult? Function(GetUsersState value)? getUsers,
    TResult? Function(MainError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainInitial value)? initial,
    TResult Function(GetUsersState value)? getUsers,
    TResult Function(MainError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MainInitial implements MainState {
  const factory MainInitial() = _$MainInitial;
}

/// @nodoc
abstract class _$$GetUsersStateCopyWith<$Res> {
  factory _$$GetUsersStateCopyWith(
          _$GetUsersState value, $Res Function(_$GetUsersState) then) =
      __$$GetUsersStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UserContainer userContainer});

  $UserContainerCopyWith<$Res> get userContainer;
}

/// @nodoc
class __$$GetUsersStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$GetUsersState>
    implements _$$GetUsersStateCopyWith<$Res> {
  __$$GetUsersStateCopyWithImpl(
      _$GetUsersState _value, $Res Function(_$GetUsersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userContainer = null,
  }) {
    return _then(_$GetUsersState(
      null == userContainer
          ? _value.userContainer
          : userContainer // ignore: cast_nullable_to_non_nullable
              as UserContainer,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserContainerCopyWith<$Res> get userContainer {
    return $UserContainerCopyWith<$Res>(_value.userContainer, (value) {
      return _then(_value.copyWith(userContainer: value));
    });
  }
}

/// @nodoc

class _$GetUsersState implements GetUsersState {
  const _$GetUsersState(this.userContainer);

  @override
  final UserContainer userContainer;

  @override
  String toString() {
    return 'MainState.getUsers(userContainer: $userContainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersState &&
            (identical(other.userContainer, userContainer) ||
                other.userContainer == userContainer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userContainer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersStateCopyWith<_$GetUsersState> get copyWith =>
      __$$GetUsersStateCopyWithImpl<_$GetUsersState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserContainer userContainer) getUsers,
    required TResult Function(String? msg) error,
  }) {
    return getUsers(userContainer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserContainer userContainer)? getUsers,
    TResult? Function(String? msg)? error,
  }) {
    return getUsers?.call(userContainer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserContainer userContainer)? getUsers,
    TResult Function(String? msg)? error,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(userContainer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainInitial value) initial,
    required TResult Function(GetUsersState value) getUsers,
    required TResult Function(MainError value) error,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainInitial value)? initial,
    TResult? Function(GetUsersState value)? getUsers,
    TResult? Function(MainError value)? error,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainInitial value)? initial,
    TResult Function(GetUsersState value)? getUsers,
    TResult Function(MainError value)? error,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class GetUsersState implements MainState {
  const factory GetUsersState(final UserContainer userContainer) =
      _$GetUsersState;

  UserContainer get userContainer;
  @JsonKey(ignore: true)
  _$$GetUsersStateCopyWith<_$GetUsersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainErrorCopyWith<$Res> {
  factory _$$MainErrorCopyWith(
          _$MainError value, $Res Function(_$MainError) then) =
      __$$MainErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$MainErrorCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainError>
    implements _$$MainErrorCopyWith<$Res> {
  __$$MainErrorCopyWithImpl(
      _$MainError _value, $Res Function(_$MainError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$MainError(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MainError implements MainError {
  const _$MainError([this.msg]);

  @override
  final String? msg;

  @override
  String toString() {
    return 'MainState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainError &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainErrorCopyWith<_$MainError> get copyWith =>
      __$$MainErrorCopyWithImpl<_$MainError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UserContainer userContainer) getUsers,
    required TResult Function(String? msg) error,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UserContainer userContainer)? getUsers,
    TResult? Function(String? msg)? error,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UserContainer userContainer)? getUsers,
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
    required TResult Function(MainInitial value) initial,
    required TResult Function(GetUsersState value) getUsers,
    required TResult Function(MainError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainInitial value)? initial,
    TResult? Function(GetUsersState value)? getUsers,
    TResult? Function(MainError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainInitial value)? initial,
    TResult Function(GetUsersState value)? getUsers,
    TResult Function(MainError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MainError implements MainState {
  const factory MainError([final String? msg]) = _$MainError;

  String? get msg;
  @JsonKey(ignore: true)
  _$$MainErrorCopyWith<_$MainError> get copyWith =>
      throw _privateConstructorUsedError;
}
