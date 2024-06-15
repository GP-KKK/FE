part of '../model.dart';


@freezed
class NewsList with _$NewsList {
  const factory NewsList({
    required List<NewsModel> data,
  }) = _NewsList;

  factory NewsList.fromJson(Map<String, dynamic> json) =>
      _$NewsListFromJson(json);
}

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel({
    required String title,
    required String url,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}