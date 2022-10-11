import 'package:flutter/material.dart';
import 'package:news_app_api/models/articles.dart';
import 'package:news_app_api/views/screens/article_details.dart';
import 'package:timeago/timeago.dart' as timage;

class NewsItem extends StatelessWidget {
  const NewsItem(this.articles, {Key? key}) : super(key: key);
  final Articles articles;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
            Navigator.of(context).pushNamed(ArticleDetails.routeName , arguments: articles)      ;

            },

      child: Container(
        decoration: BoxDecoration(),
        margin: EdgeInsets.only(left: 20, right: 20,  bottom: 20),
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(articles.urlToImage),
                          fit: BoxFit.fill)),
                )),

            Expanded(
                    flex: 2,
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        articles.source.name,
                        style: TextStyle(color: Color(0xFF79828B)),
                      )),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        articles.title,
                        style: TextStyle(
                            color: Color(0xFF42505C),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),

                  Align(
                      alignment: Alignment.bottomRight,
                      child: Text(timage.format(articles.publishedAt)))
                ],
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
