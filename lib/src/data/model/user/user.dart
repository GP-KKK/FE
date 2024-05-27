part of '../model.dart';

enum FeelState{
  driving,
  parking,
  commingsoon,
  busy,
  unknown
}

enum EmotionDegree{
  veryGood,
  good,
  normal,
  bad,
  veryBad,
  unknown
}


@freezed
abstract class UserBase with _$UserBase {
  factory UserBase.user(UserModel user) = _UserBaseUser;
  const factory UserBase.error(String message) = UserError;
  const factory UserBase.loading() = UserLoading;
}

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required String email,
    required String name,
    dynamic source, //sns 정보 기반
    @JsonKey(name: 'profile_image', includeIfNull: false) String? profileImage,
    @JsonKey(includeIfNull: false) @Default(FeelState.unknown) FeelState feelState,
    @Default('')String feel,
    @JsonKey(name: 'emotion_degree',includeIfNull: false) @Default(EmotionDegree.unknown) EmotionDegree emotionDegree,

  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
