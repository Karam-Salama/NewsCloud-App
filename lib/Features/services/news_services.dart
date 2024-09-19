import 'package:dio/dio.dart';

import '../models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  // get top headlines for specific category
  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=bfbf4103fd34456d9a0e751c8fe38e9f&category=$category&country=us');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      return articles.map((e) => ArticleModel.fromJson(e)).toList();
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
