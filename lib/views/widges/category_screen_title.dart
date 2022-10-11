import 'package:flutter/material.dart';

class CategoryScreenTitle extends StatelessWidget {
   CategoryScreenTitle ({Key? key}) : super(key: key);
  final TextStyle textStyle = TextStyle(
      fontSize: 22 , fontWeight: FontWeight.bold , color: Color(0xFF4F5A69)
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15 , horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pick your category" ,style: textStyle,),

          Text("of intersts" ,style: textStyle),

        ],
      ),
    );
  }
}
