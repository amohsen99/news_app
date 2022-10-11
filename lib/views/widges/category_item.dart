import 'package:flutter/material.dart';
import 'package:news_app_api/views/screens/news_screen.dart';
import 'package:news_app_api/views/widges/category_screen_title.dart';

class CategoryItem extends StatelessWidget {

  final String image, title;
  final Color color;

  CategoryItem(this.image, this.title, this.color, {key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: ()
             {Navigator.of(context).pushReplacementNamed(NewsScreen.routeName , arguments: title);
        },
      child: Container(
       //  margin: EdgeInsets.all(8),
        decoration: BoxDecoration(color: color , borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [Expanded(child: Image.asset(image)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title,
                style: TextStyle(color: Colors.white , fontSize: 22),))])));
  }}