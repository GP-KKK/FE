part of '../model.dart';


enum FeelState {
  @JsonValue('driving')
  driving,
  @JsonValue('parking')
  parking,
  @JsonValue('commingsoon')
  commingsoon,
  @JsonValue('busy')
  busy,
  @JsonValue('unknown') // 여기서 UNKNOWN과 매핑
  unknown,
  @JsonValue('hot')
  hot,
}
enum EmotionDegree {
  @JsonValue('veryGood')
  veryGood,
  @JsonValue('good')
  good,
  @JsonValue('normal')
  normal,
  @JsonValue('bad')
  bad,
  @JsonValue('veryBad')
  veryBad,
  @JsonValue('unknown')
  unknown,
}
extension FeelStateExtension on FeelState {
  static FeelState fromJson(String? json) {
    if (json == null) return FeelState.unknown;
    switch (json) {
      case 'driving':
        return FeelState.driving;
      case 'parking':
        return FeelState.parking;
      case 'comingsoon':
        return FeelState.commingsoon;
      case 'busy':
        return FeelState.busy;
      case 'hot':
        return FeelState.hot;
      default:
        return FeelState.unknown;
    }
  }
}

extension EmotionDegreeExtension on EmotionDegree {
  static EmotionDegree fromJson(String? json) {
    if (json == null) return EmotionDegree.unknown;
    switch (json) {
      case 'veryGood':
        return EmotionDegree.veryGood;
      case 'good':
        return EmotionDegree.good;
      case 'normal':
        return EmotionDegree.normal;
      case 'bad':
        return EmotionDegree.bad;
      case 'veryBad':
        return EmotionDegree.veryBad;
      default:
        return EmotionDegree.unknown;
    }
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
    @JsonKey(name: 'profile_image', includeIfNull: false) String? profileImage,
    @Default(FeelState.unknown) FeelState feelState,
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
