

import 'package:dio/dio.dart';
import 'package:news_cloud/models/articale_model.dart';
import 'package:news_cloud/services/consts.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);
  
  Future<List<ArticaleModel>> getTopHeadlines ({required String category, String country = 'us'}) async {
    try {
      Response response = await dio.get(
          '$base_url/top-headlines?country=$country&category=$category&apiKey=$api_key');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> responseArticles = jsonData['articles'];

      List<ArticaleModel> articles = [];

      for (var article in responseArticles) {
        ArticaleModel articaleModel = ArticaleModel.fromJson(article);
        articles.add(articaleModel);
      }

      return articles;
    }catch (e) {
      return [];
    }


  }


}