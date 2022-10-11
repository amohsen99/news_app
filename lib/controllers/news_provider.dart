import 'package:flutter/material.dart';
import 'package:news_app_api/models/articles.dart';

import '../models/news_api_manager.dart';
import '../models/source.dart';

class NewsProvider with ChangeNotifier {
  Source? selectedSource;

  Future<List<Source>?> getSources(String category) async {
    try {
      List<Source> sources = [];
      final sourceAsJson = await NewsApiManager.getSources(category);
      sources = sourceAsJson.map((e) => Source.fromJson(e)).toList();
      selectedSource = sources[0];
      notifyListeners();
      return sources;
    } catch (error) {
      print(error);
      return null;
    }
  }

  Future<List<Articles>?> getArticles(String category) async {
    try {
      List<Articles> articles = [];
      final articlesAsJson = await NewsApiManager.getArticles(category);
      articlesAsJson.forEach((element) {
        if(element['description'] !=null && element['urlToImage']!=null){
          articles.add(Articles.formJson(element));
        }
      });
      articles = articlesAsJson.map((e) {
        print(e['source']);
        return Articles.formJson(e);
      }).toList();


      List<Articles> filteredArticle = articles
          .where((element) => element.source.name == selectedSource!.name)
          .toList();

      return filteredArticle;
    } catch (error) {
      print("the error is :");
      print(error);

      return null;
    }
  }

  void changeSelectedSource(Source source){
    selectedSource = source;
    notifyListeners();

  }

}
