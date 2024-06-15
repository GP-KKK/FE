part of '../service.dart';



@RestApi()
abstract class NewsService {
  factory NewsService(Dio dio, {String baseUrl}) = _NewsService;

  @GET('/crawling')
  Future<NewsList?> getNewsList();

}
