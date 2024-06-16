part of '../controller.dart';

@riverpod
class NewsController extends _$NewsController {
  @override
  Future<NewsState> build() {
    return _fetchNewsList();
  }

  Future<NewsState> _fetchNewsList() async {
    print('fetch news list');
    final Dio dio = Dio();
    final response = await dio.get(
      'http://34.47.108.136:8080/crawling',
    );
    List<dynamic> data = response.data as List<dynamic>;

    List<NewsModel> newsList = data.map((json) => NewsModel.fromJson(json as Map<String, dynamic>)).toList();
    print(newsList);
    print("here?");
    if (response != null) {
      return NewsState(newsList: newsList);
    }
    return NewsState();
  }

}
