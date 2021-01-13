import 'package:flutter/material.dart';
import 'package:flutter_app_food/theme.dart';

class Recipe extends StatelessWidget {
  final String recipeName;

  Recipe({Key key, @required this.recipeName});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "$recipeName",
          style: TextStyle(
            fontSize: size.width/21,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
