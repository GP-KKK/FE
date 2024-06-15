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
