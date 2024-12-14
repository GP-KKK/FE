import 'dart:convert';

// 감정 상태 Enum 정의
enum FeelState { DRIVING, PARKING, COMMING_SOON, BUSY, UNKNOWN }

// 감정 정도 Enum 정의 (서버에서는 double로 전송됨)
enum EmotionDegree { VERYGOOD, GOOD, NORMAL, BAD, VERYBAD, UNKNOWN }

// FeelState Extension: JSON 직렬화/역직렬화 지원
extension FeelStateExtension on FeelState {
  String toJson() {
    return toString().split('.').last;
  }

  static FeelState fromJson(String? json) {
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
}

// UserModel 클래스
class UserModel {
  final int? id;
  final String email;
  final String name;
  final String? source;
  final String? profileImage;
  final FeelState feelState;
  final String feel;
  final double emotionDegree; // 기본값 36.5
  final String? qrcode;

  UserModel({
    this.id,
    required this.email,
    required this.name,
    this.source,
    this.profileImage,
    this.feelState = FeelState.UNKNOWN,
    this.feel = '',
    this.emotionDegree = 36.5,
    this.qrcode,
  });

  // JSON -> UserModel 변환 (역직렬화)
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] as int?,
      email: json['email'] as String,
      name: json['name'] as String,
      source: json['source'] as String?,
      profileImage: json['profile_image'] as String?,
      feelState: FeelStateExtension.fromJson(json['feel_state'] as String?),
      feel: json['feel'] as String? ?? '',
      emotionDegree: (json['emotionDegree'] as num?)?.toDouble() ?? 36.5,
      qrcode: json['qrcode'] as String?,
    );
  }

  // UserModel -> JSON 변환 (직렬화)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'source': source,
      'profile_image': profileImage,
      'feel_state': feelState.toJson(),
      'feel': feel,
      'emotionDegree': emotionDegree,
      'qrcode': qrcode,
    };
  }

  // copyWith 메서드로 불변 객체 업데이트
  UserModel copyWith({
    int? id,
    String? email,
    String? name,
    String? source,
    String? profileImage,
    FeelState? feelState,
    String? feel,
    double? emotionDegree,
    String? qrcode,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      source: source ?? this.source,
      profileImage: profileImage ?? this.profileImage,
      feelState: feelState ?? this.feelState,
      feel: feel ?? this.feel,
      emotionDegree: emotionDegree ?? this.emotionDegree,
      qrcode: qrcode ?? this.qrcode,
    );
  }
}
