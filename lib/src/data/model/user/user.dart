part of '../model.dart';


enum FeelState {
  @JsonValue('DRIVING')
  DRIVING,
  @JsonValue('PARKING')
  PARKING,
  @JsonValue('COMMING_SOON')
  COMMING_SOON,
  @JsonValue('BUSY')
  BUSY,
  @JsonValue('UNKNOWN') // 여기서 UNKNOWN과 매핑
  UNKNOWN,
}
enum EmotionDegree {
  @JsonValue('VERYGOOD')
  VERYGOOD,
  @JsonValue('GOOD')
  GOOD,
  @JsonValue('NORMAL')
  NORMAL,
  @JsonValue('BAD')
  BAD,
  @JsonValue('VERYBAD')
  VERYBAD,
  @JsonValue('UNKNOWN')
  UNKNOWN,
}
extension FeelStateExtension on FeelState {
  static FeelState fromJson(String? json) {
    if (json == null) return FeelState.UNKNOWN;
    switch (json) {
      case 'DRIVING':
        return FeelState.DRIVING;
      case 'PARKING':
        return FeelState.PARKING;
      case 'COMMING_SOON':
        return FeelState.COMMING_SOON;
      case 'BUSY':
        return FeelState.BUSY;
      default:
        return FeelState.UNKNOWN;
    }
  }

  String toJson(FeelState feelState) {
    return feelState.toString().split('.').last;
  }

}

extension EmotionDegreeExtension on EmotionDegree {
  static EmotionDegree fromJson(String? json) {
    if (json == null) return EmotionDegree.UNKNOWN;
    switch (json) {
      case 'veryGood':
        return EmotionDegree.VERYGOOD;
      case 'good':
        return EmotionDegree.GOOD;
      case 'normal':
        return EmotionDegree.NORMAL;
      case 'bad':
        return EmotionDegree.BAD;
      case 'veryBad':
        return EmotionDegree.VERYBAD;
      default:
        return EmotionDegree.UNKNOWN;
    }
  }
  String toJson(EmotionDegree emotionDegree) {
    return emotionDegree.toString().split('.').last;
  }

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
    String? source, // sns 정보 기반
    @JsonKey(includeIfNull: false) String? profileImage,
    @Default(FeelState.UNKNOWN) FeelState feelState,
    @Default('') String feel,
    @JsonKey(includeIfNull: false) EmotionDegree? emotionDegree,
    @JsonKey(includeIfNull: false) String? qrcode,
  }) = _UserModel;
 // {email: ksm-1219@naver.com, name: 김성민, source: naver, feel: , feelState: UNKNOWN, profileImage: null, emotionDegree: null, qrcode:
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'] as String,
      name: json['name'] as String,
      source: json['source'] as String?,
      profileImage: json['profileImage'] as String?,
      feelState: FeelStateExtension.fromJson(json['feelState'] as String?),
      feel: json['feel'] as String? ?? '',
      emotionDegree: EmotionDegreeExtension.fromJson(json['emotionDegree'] as String?),
      qrcode: json['qrcode'] as String?,
    );
  }

}
