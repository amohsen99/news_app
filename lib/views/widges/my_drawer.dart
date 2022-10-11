import 'package:flutter/material.dart';
import 'package:news_app_api/views/screens/home_screen.dart';
import 'package:news_app_api/views/screens/settings_screen.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Center(
                child: Text(
              "News App!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            )),
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          ),
          InkWell(
            onTap: (){
              if(ModalRoute.of(context)!.settings.name!=HomeScreen.routeName)
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);

            },
            child: ListTile(
              title: Text(
                "Categories",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.list, size: 40, color: Colors.black),
            ),
          ) ,  InkWell(
                onTap: (){
                  if(ModalRoute.of(context)!.settings.name!=SettingScreen.routeName)
                  Navigator.of(context).pushReplacementNamed(SettingScreen.routeName);
                },
            child: ListTile(
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.settings, size: 40, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
