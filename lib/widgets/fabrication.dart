import 'package:flutter/material.dart';
import 'package:flutter_app_food/theme.dart';

class Fabrication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.topLeft,
        child: Text(
          "Yapılışı",
          style: TextStyle(
            fontSize: size.width/19,
            fontWeight: FontWeight.bold,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
