import 'package:flutter/material.dart';

import '../widges/my_drawer.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);
  static const String routeName ="settings";

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
            title: Center(child: Text("Setting Screen")),
            backgroundColor: Theme
                .of(context)
                .primaryColor,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),

          drawer: Mydrawer(),));
  }
}


