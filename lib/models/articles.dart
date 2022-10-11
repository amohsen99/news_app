import 'package:news_app_api/models/source.dart';

class Articles{
  final Source source ;
  final String title ;
      String? description ;
      String url;
      String urlToImage;
  final DateTime publishedAt ;


  Articles(this.source, this.title , this.description , this.url,
      this.urlToImage,this.publishedAt);

  Articles.formJson(Map<String , Object?>json)
      :this(
    Source.fromJson(json['source']! as Map<String , Object?>),
      json['title']! as String ,
    json['description']! as String,
   json['url']! as String,
    json['urlToImage']! as String,
    DateTime.parse(json['publishedAt']! as String)
  );

}