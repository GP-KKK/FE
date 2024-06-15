part of '../controller.dart';

@riverpod
class NewsController extends _$NewsController {
  @override
  Future<NewsState> build() {
    return _fetchNewsList();
  }

  Future<NewsState> _fetchNewsList() async {
    final response = await ref
        .watch(newsRepositoryProvider)
        .getNewsList()
        .onError(ref.read(errorControllerProvider.notifier).onError);

    if (response != null) {
      return NewsState(newsList: response.data);
    }
    return NewsState();
  }

}
