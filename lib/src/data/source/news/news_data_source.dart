part of '../source.dart';

class NewsDataSource implements NewsRepository {
  final NewsService _service;

  NewsDataSource({required NewsService service}) : _service = service;

  @override
  Future<NewsList?> getNewsList() => _service.getNewsList();

}

@riverpod
NewsRepository newsRepository(NewsRepositoryRef ref) {
  final client = ref.watch(httpProvider);
  return NewsDataSource(
    service: NewsService(client, baseUrl: 'https://${Constants.ip}/'),
  );
}
