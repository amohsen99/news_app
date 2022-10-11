import 'package:flutter/material.dart';
import 'package:news_app_api/views/widges/category_item.dart';
import 'package:news_app_api/views/widges/category_screen_title.dart';
import 'package:news_app_api/views/widges/my_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = "home";
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/pattern.png"), fit: BoxFit.cover)),
        child: Scaffold(
          // backgroundColor: Colors.transparent ,
            appBar: AppBar(
              elevation: 0,
              title: Text("News App"),
              backgroundColor: Theme
                  .of(context)
                  .primaryColor,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),  drawer: Mydrawer(),

            body: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoryScreenTitle(),
                    Expanded(child: GridView.count(crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 15,
                      children: [
                        CategoryItem("assets/images/ball.png", "Sports",
                            Color(0xFFC91C22)),
                        CategoryItem("assets/images/Politics.png", "Politics",
                            Color(0xFF003E90)),
                        CategoryItem("assets/images/health.png", "Health",
                            Color(0xFFED1E79)),
                        CategoryItem("assets/images/bussines.png", "Bussines",
                            Color(0xFFCF7E48)),
                        CategoryItem(
                            "assets/images/environment.png", "Environment",
                            Color(0xFF4882CF)),
                        CategoryItem("assets/images/science.png", "Science",
                            Color(0xFFF2D352)),

                      ],)

                    )
                  ],
                ))));
  }}