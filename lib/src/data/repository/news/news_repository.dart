part of '../repository.dart';

abstract class NewsRepository {
  Future<NewsList?> getNewsList();
}
