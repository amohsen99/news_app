import 'package:flutter/material.dart';
import 'package:news_app_api/views/widges/source_bar_item.dart';

import '../../models/source.dart';

class SourceBar extends StatelessWidget {
  const SourceBar(this.sources ,{Key? key}) : super(key: key);
  final List<Source>sources;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.07,
      child: ListView.builder(scrollDirection: Axis.horizontal,
        itemCount: sources.length,
          itemBuilder:(context, index){
          return SourceBarItem(sources[index]);
          },


      ),
    );
  }
}
