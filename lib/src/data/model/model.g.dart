// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      email: json['email'] as String,
      name: json['name'] as String,
      source: json['source'],
      profileImage: json['profile_image'] as String?,
      feelState: $enumDecodeNullable(_$FeelStateEnumMap, json['feelState']) ??
          FeelState.unknown,
      feel: json['feel'] as String? ?? '',
      emotionDegree:
          $enumDecodeNullable(_$EmotionDegreeEnumMap, json['emotion_degree']) ??
              EmotionDegree.unknown,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) {
  final val = <String, dynamic>{
    'email': instance.email,
    'name': instance.name,
    'source': instance.source,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('profile_image', instance.profileImage);
  val['feelState'] = _$FeelStateEnumMap[instance.feelState]!;
  val['feel'] = instance.feel;
  val['emotion_degree'] = _$EmotionDegreeEnumMap[instance.emotionDegree]!;
  return val;
}

const _$FeelStateEnumMap = {
  FeelState.driving: 'driving',
  FeelState.parking: 'parking',
  FeelState.commingsoon: 'commingsoon',
  FeelState.busy: 'busy',
  FeelState.unknown: 'unknown',
};

const _$EmotionDegreeEnumMap = {
  EmotionDegree.veryGood: 'veryGood',
  EmotionDegree.good: 'good',
  EmotionDegree.normal: 'normal',
  EmotionDegree.bad: 'bad',
  EmotionDegree.veryBad: 'veryBad',
  EmotionDegree.unknown: 'unknown',
};
