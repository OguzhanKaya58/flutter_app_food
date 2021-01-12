import "package:flutter/material.dart";
import 'package:flutter_app_food/theme.dart';

class Weak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Pzt",
            style: TextStyle(fontSize: size.width/17, color: whiteColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Sal",
            style: TextStyle(fontSize: size.width/17, color: whiteColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Çar",
            style: TextStyle(fontSize: size.width/17, color: whiteColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Per",
            style: TextStyle(fontSize: size.width/17, color: whiteColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Cum",
            style: TextStyle(fontSize: size.width/17, color: whiteColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Cst",
            style: TextStyle(fontSize: size.width/17, color: whiteColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Pzr",
            style: TextStyle(fontSize: size.width/17, color: whiteColor),
          ),
        ),
      ],
    );
  }
}
