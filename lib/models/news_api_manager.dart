import 'package:dio/dio.dart';
import 'package:news_app_api/models/source.dart';

class NewsApiManager{
 static final  String  _apiKey="4562a9fcacfc4c2ea55f1b39a204282c";
  static final   String _apiUrl ="https://newsapi.org/v2/";
  Dio dio =Dio();

   static Future<List<dynamic>> getSources(String category)async{
     Dio dio =Dio();
     String url = _apiUrl+"top-headlines/sources";
    Map<String,String>params={
      'apiKey':_apiKey,
      'category':category
    };
  Response response =await dio.get(url , queryParameters: params);
  return response.data!['sources'] ;
  //print(response.data!);

  }
  static Future<List<dynamic>> getArticles(String category)async{
    Dio dio =Dio();

    String url = _apiUrl+"top-headlines";
     Map<String,String>params={
       'apiKey':_apiKey,
       'category':category,

     };
     Response response =await dio.get(url , queryParameters: params);
     return response.data!['articles'] ;
  }
}