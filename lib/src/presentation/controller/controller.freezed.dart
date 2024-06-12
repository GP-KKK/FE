// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notAuthenticated,
    required TResult Function(UserModel user, UserModel? updatedUser)
        authenticated,
    required TResult Function() invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? notAuthenticated,
    TResult? Function(UserModel user, UserModel? updatedUser)? authenticated,
    TResult? Function()? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notAuthenticated,
    TResult Function(UserModel user, UserModel? updatedUser)? authenticated,
    TResult Function()? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(NotAuthenticated value) notAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(NotAuthenticated value)? notAuthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthInitialImplCopyWith<$Res> {
  factory _$$AuthInitialImplCopyWith(
          _$AuthInitialImpl value, $Res Function(_$AuthInitialImpl) then) =
      __$$AuthInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitialImpl>
    implements _$$AuthInitialImplCopyWith<$Res> {
  __$$AuthInitialImplCopyWithImpl(
      _$AuthInitialImpl _value, $Res Function(_$AuthInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthInitialImpl implements AuthInitial {
  const _$AuthInitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notAuthenticated,
    required TResult Function(UserModel user, UserModel? updatedUser)
        authenticated,
    required TResult Function() invalid,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? notAuthenticated,
    TResult? Function(UserModel user, UserModel? updatedUser)? authenticated,
    TResult? Function()? invalid,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notAuthenticated,
    TResult Function(UserModel user, UserModel? updatedUser)? authenticated,
    TResult Function()? invalid,
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
    required TResult Function(AuthInitial value) initial,
    required TResult Function(NotAuthenticated value) notAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthInvalid value) invalid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(NotAuthenticated value)? notAuthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthInvalid value)? invalid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitial implements AuthState {
  const factory AuthInitial() = _$AuthInitialImpl;
}

/// @nodoc
abstract class _$$NotAuthenticatedImplCopyWith<$Res> {
  factory _$$NotAuthenticatedImplCopyWith(_$NotAuthenticatedImpl value,
          $Res Function(_$NotAuthenticatedImpl) then) =
      __$$NotAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$NotAuthenticatedImpl>
    implements _$$NotAuthenticatedImplCopyWith<$Res> {
  __$$NotAuthenticatedImplCopyWithImpl(_$NotAuthenticatedImpl _value,
      $Res Function(_$NotAuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotAuthenticatedImpl implements NotAuthenticated {
  const _$NotAuthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.notAuthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotAuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notAuthenticated,
    required TResult Function(UserModel user, UserModel? updatedUser)
        authenticated,
    required TResult Function() invalid,
  }) {
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? notAuthenticated,
    TResult? Function(UserModel user, UserModel? updatedUser)? authenticated,
    TResult? Function()? invalid,
  }) {
    return notAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notAuthenticated,
    TResult Function(UserModel user, UserModel? updatedUser)? authenticated,
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(NotAuthenticated value) notAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthInvalid value) invalid,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(NotAuthenticated value)? notAuthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthInvalid value)? invalid,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class NotAuthenticated implements AuthState {
  const factory NotAuthenticated() = _$NotAuthenticatedImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user, UserModel? updatedUser});

  $UserModelCopyWith<$Res> get user;
  $UserModelCopyWith<$Res>? get updatedUser;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? updatedUser = freezed,
  }) {
    return _then(_$AuthenticatedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      updatedUser: freezed == updatedUser
          ? _value.updatedUser
          : updatedUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get updatedUser {
    if (_value.updatedUser == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.updatedUser!, (value) {
      return _then(_value.copyWith(updatedUser: value));
    });
  }
}

/// @nodoc

class _$AuthenticatedImpl implements Authenticated {
  const _$AuthenticatedImpl({required this.user, this.updatedUser});

  @override
  final UserModel user;
  @override
  final UserModel? updatedUser;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user, updatedUser: $updatedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.updatedUser, updatedUser) ||
                other.updatedUser == updatedUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, updatedUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      __$$AuthenticatedImplCopyWithImpl<_$AuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notAuthenticated,
    required TResult Function(UserModel user, UserModel? updatedUser)
        authenticated,
    required TResult Function() invalid,
  }) {
    return authenticated(user, updatedUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? notAuthenticated,
    TResult? Function(UserModel user, UserModel? updatedUser)? authenticated,
    TResult? Function()? invalid,
  }) {
    return authenticated?.call(user, updatedUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notAuthenticated,
    TResult Function(UserModel user, UserModel? updatedUser)? authenticated,
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user, updatedUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(NotAuthenticated value) notAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthInvalid value) invalid,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(NotAuthenticated value)? notAuthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthInvalid value)? invalid,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated(
      {required final UserModel user,
      final UserModel? updatedUser}) = _$AuthenticatedImpl;

  UserModel get user;
  UserModel? get updatedUser;
  @JsonKey(ignore: true)
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthInvalidImplCopyWith<$Res> {
  factory _$$AuthInvalidImplCopyWith(
          _$AuthInvalidImpl value, $Res Function(_$AuthInvalidImpl) then) =
      __$$AuthInvalidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInvalidImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInvalidImpl>
    implements _$$AuthInvalidImplCopyWith<$Res> {
  __$$AuthInvalidImplCopyWithImpl(
      _$AuthInvalidImpl _value, $Res Function(_$AuthInvalidImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthInvalidImpl implements AuthInvalid {
  const _$AuthInvalidImpl();

  @override
  String toString() {
    return 'AuthState.invalid()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInvalidImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() notAuthenticated,
    required TResult Function(UserModel user, UserModel? updatedUser)
        authenticated,
    required TResult Function() invalid,
  }) {
    return invalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? notAuthenticated,
    TResult? Function(UserModel user, UserModel? updatedUser)? authenticated,
    TResult? Function()? invalid,
  }) {
    return invalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? notAuthenticated,
    TResult Function(UserModel user, UserModel? updatedUser)? authenticated,
    TResult Function()? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(NotAuthenticated value) notAuthenticated,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(NotAuthenticated value)? notAuthenticated,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(AuthInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class AuthInvalid implements AuthState {
  const factory AuthInvalid() = _$AuthInvalidImpl;
}

/// @nodoc
mixin _$ErrorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? code, String message, Exception? exception)
        notify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? code, String message, Exception? exception)? notify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? code, String message, Exception? exception)? notify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorInitial value) initial,
    required TResult Function(ErrorNotify value) notify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorInitial value)? initial,
    TResult? Function(ErrorNotify value)? notify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorInitial value)? initial,
    TResult Function(ErrorNotify value)? notify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) then) =
      _$ErrorStateCopyWithImpl<$Res, ErrorState>;
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res, $Val extends ErrorState>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ErrorInitialImplCopyWith<$Res> {
  factory _$$ErrorInitialImplCopyWith(
          _$ErrorInitialImpl value, $Res Function(_$ErrorInitialImpl) then) =
      __$$ErrorInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorInitialImplCopyWithImpl<$Res>
    extends _$ErrorStateCopyWithImpl<$Res, _$ErrorInitialImpl>
    implements _$$ErrorInitialImplCopyWith<$Res> {
  __$$ErrorInitialImplCopyWithImpl(
      _$ErrorInitialImpl _value, $Res Function(_$ErrorInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorInitialImpl implements ErrorInitial {
  const _$ErrorInitialImpl();

  @override
  String toString() {
    return 'ErrorState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? code, String message, Exception? exception)
        notify,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? code, String message, Exception? exception)? notify,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? code, String message, Exception? exception)? notify,
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
    required TResult Function(ErrorInitial value) initial,
    required TResult Function(ErrorNotify value) notify,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorInitial value)? initial,
    TResult? Function(ErrorNotify value)? notify,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorInitial value)? initial,
    TResult Function(ErrorNotify value)? notify,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ErrorInitial implements ErrorState {
  const factory ErrorInitial() = _$ErrorInitialImpl;
}

/// @nodoc
abstract class _$$ErrorNotifyImplCopyWith<$Res> {
  factory _$$ErrorNotifyImplCopyWith(
          _$ErrorNotifyImpl value, $Res Function(_$ErrorNotifyImpl) then) =
      __$$ErrorNotifyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? code, String message, Exception? exception});
}

/// @nodoc
class __$$ErrorNotifyImplCopyWithImpl<$Res>
    extends _$ErrorStateCopyWithImpl<$Res, _$ErrorNotifyImpl>
    implements _$$ErrorNotifyImplCopyWith<$Res> {
  __$$ErrorNotifyImplCopyWithImpl(
      _$ErrorNotifyImpl _value, $Res Function(_$ErrorNotifyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = null,
    Object? exception = freezed,
  }) {
    return _then(_$ErrorNotifyImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$ErrorNotifyImpl implements ErrorNotify {
  const _$ErrorNotifyImpl({this.code, required this.message, this.exception});

  @override
  final int? code;
  @override
  final String message;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'ErrorState.notify(code: $code, message: $message, exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorNotifyImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorNotifyImplCopyWith<_$ErrorNotifyImpl> get copyWith =>
      __$$ErrorNotifyImplCopyWithImpl<_$ErrorNotifyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int? code, String message, Exception? exception)
        notify,
  }) {
    return notify(code, message, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int? code, String message, Exception? exception)? notify,
  }) {
    return notify?.call(code, message, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int? code, String message, Exception? exception)? notify,
    required TResult orElse(),
  }) {
    if (notify != null) {
      return notify(code, message, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorInitial value) initial,
    required TResult Function(ErrorNotify value) notify,
  }) {
    return notify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorInitial value)? initial,
    TResult? Function(ErrorNotify value)? notify,
  }) {
    return notify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorInitial value)? initial,
    TResult Function(ErrorNotify value)? notify,
    required TResult orElse(),
  }) {
    if (notify != null) {
      return notify(this);
    }
    return orElse();
  }
}

abstract class ErrorNotify implements ErrorState {
  const factory ErrorNotify(
      {final int? code,
      required final String message,
      final Exception? exception}) = _$ErrorNotifyImpl;

  int? get code;
  String get message;
  Exception? get exception;
  @JsonKey(ignore: true)
  _$$ErrorNotifyImplCopyWith<_$ErrorNotifyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
