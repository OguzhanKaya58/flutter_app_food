import 'package:flutter/material.dart';

import '../theme.dart';

// ignore: must_be_immutable
class FoodMaterial extends StatelessWidget {
  String name;

  FoodMaterial({Key key, @required this.name});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: size.height / 64,
            width: size.width / 36,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.topLeft,
            child: Text(
              "$name",
              style: TextStyle(
                fontSize: 18,
                color: whiteColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
