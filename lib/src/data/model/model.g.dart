// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsListImpl _$$NewsListImplFromJson(Map<String, dynamic> json) =>
    _$NewsListImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => NewsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NewsListImplToJson(_$NewsListImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$NewsModelImpl _$$NewsModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsModelImpl(
      title: json['title'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$NewsModelImplToJson(_$NewsModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
    };

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      email: json['email'] as String,
      name: json['name'] as String,
      source: json['source'] as String?,
      profileImage: json['profile_image'] as String?,
      feelState: $enumDecodeNullable(_$FeelStateEnumMap, json['feelState']) ??
          FeelState.unknown,
      feel: json['feel'] as String? ?? '',
      emotionDegree:
          $enumDecodeNullable(_$EmotionDegreeEnumMap, json['emotionDegree']),
      qrcode: json['qrcode'] as String?,
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
  writeNotNull('emotionDegree', _$EmotionDegreeEnumMap[instance.emotionDegree]);
  writeNotNull('qrcode', instance.qrcode);
  return val;
}

const _$FeelStateEnumMap = {
  FeelState.driving: 'driving',
  FeelState.parking: 'parking',
  FeelState.commingsoon: 'commingsoon',
  FeelState.busy: 'busy',
  FeelState.unknown: 'unknown',
  FeelState.hot: 'hot',
};

const _$EmotionDegreeEnumMap = {
  EmotionDegree.veryGood: 'veryGood',
  EmotionDegree.good: 'good',
  EmotionDegree.normal: 'normal',
  EmotionDegree.bad: 'bad',
  EmotionDegree.veryBad: 'veryBad',
  EmotionDegree.unknown: 'unknown',
};
