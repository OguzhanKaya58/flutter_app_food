import 'package:flutter/material.dart';
import 'package:flutter_app_food/theme.dart';

class Recipe extends StatelessWidget {
  final String recipeName;

  Recipe({Key key, @required this.recipeName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          "$recipeName",
          style: TextStyle(
            fontSize: 18,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
