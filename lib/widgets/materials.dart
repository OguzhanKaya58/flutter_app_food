import 'package:flutter/material.dart';
import 'package:flutter_app_food/theme.dart';

class Materials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return               Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.topLeft,
        child: Text(
          "Malzemeler",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
