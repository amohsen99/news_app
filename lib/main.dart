

import 'package:flutter/material.dart';
import 'package:news_app_api/controllers/news_provider.dart';
import 'package:news_app_api/views/screens/article_details.dart';
import 'package:news_app_api/views/screens/home_screen.dart';
import 'package:news_app_api/views/screens/news_screen.dart';
import 'package:news_app_api/views/screens/settings_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => NewsProvider(), child: const MyApp()));
}

 class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF39A552),
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        NewsScreen.routeName: (context) => NewsScreen(),
        SettingScreen.routeName: (context) => SettingScreen(),
        ArticleDetails.routeName:(context)=>ArticleDetails()
      },
    );
  }
}
