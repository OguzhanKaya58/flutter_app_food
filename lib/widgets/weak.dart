import "package:flutter/material.dart";
import 'package:flutter_app_food/theme.dart';

class Weak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Pzt",
            style: TextStyle(fontSize: 24, color: whiteColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Sal",
            style: TextStyle(fontSize: 24, color: whiteColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Çar",
            style: TextStyle(fontSize: 24, color: whiteColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Per",
            style: TextStyle(fontSize: 24, color: whiteColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Cum",
            style: TextStyle(fontSize: 24, color: whiteColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Cst",
            style: TextStyle(fontSize: 24, color: whiteColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Pzr",
            style: TextStyle(fontSize: 24, color: whiteColor),
          ),
        ),
      ],
    );
  }
}
