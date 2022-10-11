import 'package:flutter/material.dart';
import 'package:news_app_api/controllers/news_provider.dart';
import 'package:provider/provider.dart';

import '../../models/news_api_manager.dart';
import '../../models/source.dart';

class SourceBarItem extends StatelessWidget {

  final Source source;
  SourceBarItem(this.source, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected =source.name==Provider.of<NewsProvider>(context).selectedSource!.name;
    return Container(

        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color:(isSelected)? Theme.of(context).primaryColor : Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 2,
              color: Theme.of(context).primaryColor,
              style: BorderStyle.solid,
            )),
        child: TextButton(
          onPressed: () {

            Provider.of<NewsProvider>(context, listen: false).changeSelectedSource(source);
          },
          child: FittedBox(
              child: Text(source.name,
                  style: TextStyle(color: (isSelected)?Colors.white:Theme.of(context).primaryColor))),
        ));


  }
}
