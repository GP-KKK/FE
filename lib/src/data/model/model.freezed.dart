// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserBase {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) user,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? user,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? user,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserBaseUser value) user,
    required TResult Function(UserError value) error,
    required TResult Function(UserLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserBaseUser value)? user,
    TResult? Function(UserError value)? error,
    TResult? Function(UserLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserBaseUser value)? user,
    TResult Function(UserError value)? error,
    TResult Function(UserLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBaseCopyWith<$Res> {
  factory $UserBaseCopyWith(UserBase value, $Res Function(UserBase) then) =
      _$UserBaseCopyWithImpl<$Res, UserBase>;
}

/// @nodoc
class _$UserBaseCopyWithImpl<$Res, $Val extends UserBase>
    implements $UserBaseCopyWith<$Res> {
  _$UserBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserBaseUserImplCopyWith<$Res> {
  factory _$$UserBaseUserImplCopyWith(
          _$UserBaseUserImpl value, $Res Function(_$UserBaseUserImpl) then) =
      __$$UserBaseUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserBaseUserImplCopyWithImpl<$Res>
    extends _$UserBaseCopyWithImpl<$Res, _$UserBaseUserImpl>
    implements _$$UserBaseUserImplCopyWith<$Res> {
  __$$UserBaseUserImplCopyWithImpl(
      _$UserBaseUserImpl _value, $Res Function(_$UserBaseUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserBaseUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserBaseUserImpl implements _UserBaseUser {
  _$UserBaseUserImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'UserBase.user(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBaseUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBaseUserImplCopyWith<_$UserBaseUserImpl> get copyWith =>
      __$$UserBaseUserImplCopyWithImpl<_$UserBaseUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) user,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return user(this.user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? user,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) {
    return user?.call(this.user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? user,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this.user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserBaseUser value) user,
    required TResult Function(UserError value) error,
    required TResult Function(UserLoading value) loading,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserBaseUser value)? user,
    TResult? Function(UserError value)? error,
    TResult? Function(UserLoading value)? loading,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserBaseUser value)? user,
    TResult Function(UserError value)? error,
    TResult Function(UserLoading value)? loading,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class _UserBaseUser implements UserBase {
  factory _UserBaseUser(final UserModel user) = _$UserBaseUserImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$UserBaseUserImplCopyWith<_$UserBaseUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserErrorImplCopyWith<$Res> {
  factory _$$UserErrorImplCopyWith(
          _$UserErrorImpl value, $Res Function(_$UserErrorImpl) then) =
      __$$UserErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UserErrorImplCopyWithImpl<$Res>
    extends _$UserBaseCopyWithImpl<$Res, _$UserErrorImpl>
    implements _$$UserErrorImplCopyWith<$Res> {
  __$$UserErrorImplCopyWithImpl(
      _$UserErrorImpl _value, $Res Function(_$UserErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UserErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserErrorImpl implements UserError {
  const _$UserErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserBase.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserErrorImplCopyWith<_$UserErrorImpl> get copyWith =>
      __$$UserErrorImplCopyWithImpl<_$UserErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) user,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? user,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? user,
    TResult Function(String message)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserBaseUser value) user,
    required TResult Function(UserError value) error,
    required TResult Function(UserLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserBaseUser value)? user,
    TResult? Function(UserError value)? error,
    TResult? Function(UserLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserBaseUser value)? user,
    TResult Function(UserError value)? error,
    TResult Function(UserLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserError implements UserBase {
  const factory UserError(final String message) = _$UserErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$UserErrorImplCopyWith<_$UserErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoadingImplCopyWith<$Res> {
  factory _$$UserLoadingImplCopyWith(
          _$UserLoadingImpl value, $Res Function(_$UserLoadingImpl) then) =
      __$$UserLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoadingImplCopyWithImpl<$Res>
    extends _$UserBaseCopyWithImpl<$Res, _$UserLoadingImpl>
    implements _$$UserLoadingImplCopyWith<$Res> {
  __$$UserLoadingImplCopyWithImpl(
      _$UserLoadingImpl _value, $Res Function(_$UserLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserLoadingImpl implements UserLoading {
  const _$UserLoadingImpl();

  @override
  String toString() {
    return 'UserBase.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) user,
    required TResult Function(String message) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? user,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? user,
    TResult Function(String message)? error,
    TResult Function()? loading,
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
    required TResult Function(_UserBaseUser value) user,
    required TResult Function(UserError value) error,
    required TResult Function(UserLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserBaseUser value)? user,
    TResult? Function(UserError value)? error,
    TResult? Function(UserLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserBaseUser value)? user,
    TResult Function(UserError value)? error,
    TResult Function(UserLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserLoading implements UserBase {
  const factory UserLoading() = _$UserLoadingImpl;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  dynamic get source => throw _privateConstructorUsedError; //sns 정보 기반
  @JsonKey(name: 'profile_image', includeIfNull: false)
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  FeelState get feelState => throw _privateConstructorUsedError;
  String get feel => throw _privateConstructorUsedError;
  @JsonKey(name: 'emotion_degree', includeIfNull: false)
  EmotionDegree get emotionDegree => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String email,
      String name,
      dynamic source,
      @JsonKey(name: 'profile_image', includeIfNull: false)
      String? profileImage,
      @JsonKey(includeIfNull: false) FeelState feelState,
      String feel,
      @JsonKey(name: 'emotion_degree', includeIfNull: false)
      EmotionDegree emotionDegree});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? source = freezed,
    Object? profileImage = freezed,
    Object? feelState = null,
    Object? feel = null,
    Object? emotionDegree = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      feelState: null == feelState
          ? _value.feelState
          : feelState // ignore: cast_nullable_to_non_nullable
              as FeelState,
      feel: null == feel
          ? _value.feel
          : feel // ignore: cast_nullable_to_non_nullable
              as String,
      emotionDegree: null == emotionDegree
          ? _value.emotionDegree
          : emotionDegree // ignore: cast_nullable_to_non_nullable
              as EmotionDegree,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String name,
      dynamic source,
      @JsonKey(name: 'profile_image', includeIfNull: false)
      String? profileImage,
      @JsonKey(includeIfNull: false) FeelState feelState,
      String feel,
      @JsonKey(name: 'emotion_degree', includeIfNull: false)
      EmotionDegree emotionDegree});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? source = freezed,
    Object? profileImage = freezed,
    Object? feelState = null,
    Object? feel = null,
    Object? emotionDegree = null,
  }) {
    return _then(_$UserModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      feelState: null == feelState
          ? _value.feelState
          : feelState // ignore: cast_nullable_to_non_nullable
              as FeelState,
      feel: null == feel
          ? _value.feel
          : feel // ignore: cast_nullable_to_non_nullable
              as String,
      emotionDegree: null == emotionDegree
          ? _value.emotionDegree
          : emotionDegree // ignore: cast_nullable_to_non_nullable
              as EmotionDegree,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl(
      {required this.email,
      required this.name,
      this.source,
      @JsonKey(name: 'profile_image', includeIfNull: false) this.profileImage,
      @JsonKey(includeIfNull: false) this.feelState = FeelState.unknown,
      this.feel = '',
      @JsonKey(name: 'emotion_degree', includeIfNull: false)
      this.emotionDegree = EmotionDegree.unknown});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String email;
  @override
  final String name;
  @override
  final dynamic source;
//sns 정보 기반
  @override
  @JsonKey(name: 'profile_image', includeIfNull: false)
  final String? profileImage;
  @override
  @JsonKey(includeIfNull: false)
  final FeelState feelState;
  @override
  @JsonKey()
  final String feel;
  @override
  @JsonKey(name: 'emotion_degree', includeIfNull: false)
  final EmotionDegree emotionDegree;

  @override
  String toString() {
    return 'UserModel(email: $email, name: $name, source: $source, profileImage: $profileImage, feelState: $feelState, feel: $feel, emotionDegree: $emotionDegree)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.feelState, feelState) ||
                other.feelState == feelState) &&
            (identical(other.feel, feel) || other.feel == feel) &&
            (identical(other.emotionDegree, emotionDegree) ||
                other.emotionDegree == emotionDegree));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      name,
      const DeepCollectionEquality().hash(source),
      profileImage,
      feelState,
      feel,
      emotionDegree);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {required final String email,
      required final String name,
      final dynamic source,
      @JsonKey(name: 'profile_image', includeIfNull: false)
      final String? profileImage,
      @JsonKey(includeIfNull: false) final FeelState feelState,
      final String feel,
      @JsonKey(name: 'emotion_degree', includeIfNull: false)
      final EmotionDegree emotionDegree}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get email;
  @override
  String get name;
  @override
  dynamic get source;
  @override //sns 정보 기반
  @JsonKey(name: 'profile_image', includeIfNull: false)
  String? get profileImage;
  @override
  @JsonKey(includeIfNull: false)
  FeelState get feelState;
  @override
  String get feel;
  @override
  @JsonKey(name: 'emotion_degree', includeIfNull: false)
  EmotionDegree get emotionDegree;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
