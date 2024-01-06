import 'package:dio/dio.dart';
import 'package:newsapp/models/news_model.dart';

class NewsServices{
  final Dio dio;

  NewsServices(this.dio);

  Future<List<NewsModel>> getGeneralNews() async{
    try {
      var response = await
      dio.get("https://newsdata.io/api/1/news?apikey=pub_29265466e008d4943decb5895f540647b0a0&country=eg&category=world");
      Map<String,dynamic> jsonData = response.data;
      List<dynamic> newsList = jsonData['results'];
      List<NewsModel> newsModels=[] ;
      NewsModel newsModel ;
      for(var news in newsList){
        newsModel = NewsModel(title: news['title'], description: news['description'], photo: news['image_url']);
        newsModels.add(newsModel);
      }
      return newsModels;
    }  catch (e) {
      return[];
    }
  }
}