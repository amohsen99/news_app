import 'package:flutter/material.dart';
import 'package:news_app_api/controllers/news_provider.dart';
import 'package:news_app_api/models/articles.dart';
import 'package:provider/provider.dart';

import '../../models/source.dart';
import '../widges/my_drawer.dart';
import '../widges/news_item.dart';
import '../widges/source_bar.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen({Key? key}) : super(key: key);
  static const String routeName = "news";
  String? title;
  String get category => title!.toLowerCase();

  @override
  Widget build(BuildContext context) {
    title = ModalRoute.of(context)!.settings.arguments as String;

    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("assets/images/pattern.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          // backgroundColor: Colors.transparent ,
          appBar: AppBar(
            elevation: 0,
            title: Center(child: Text(title!)),
            backgroundColor: Theme.of(context).primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          drawer: Mydrawer(),
          body: FutureBuilder<List<Source>?>(
              future: Provider.of<NewsProvider>(context, listen: false)
                  .getSources(category),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator.adaptive());
                }
                if (snapshot.data == null) {
                  return Center(
                      child: Text("problem is occured please try again later"));
                } else {
                  return Column(
                    children: [
                      SourceBar(snapshot.data!),
                      FutureBuilder<List<Articles>?>(
                          future:
                              Provider.of<NewsProvider>(context)
                                  .getArticles(category),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Center(
                                  child: CircularProgressIndicator.adaptive());
                            }
                            if (snapshot.data == null) {
                              return Center(
                                  child: Text(
                                      "problem is occured please try again later"));
                            } else {
                              return Expanded(
                                child: ListView.builder(
                                    itemCount: snapshot.data!.length,
                                    itemExtent:
                                        MediaQuery.of(context).size.height * 0.35,
                                    itemBuilder: (context, index) {
                                      return NewsItem(snapshot.data![index]);
                                    }),
                              );
                            }
                          })
                    ],
                  );
                }
              }),
        ));
  }
}
