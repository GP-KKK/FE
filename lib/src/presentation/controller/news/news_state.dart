part of '../controller.dart';

@freezed
sealed class NewsState with _$NewsState {
  factory NewsState({
    @Default([]) List<NewsModel> newsList,
  }) = _NewsState;
}
