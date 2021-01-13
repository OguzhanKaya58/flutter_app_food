import 'package:flutter/material.dart';
import 'package:flutter_app_food/theme.dart';

// ignore: must_be_immutable
class FoodMenuSubtitle extends StatelessWidget {
  String subTitleName;

  FoodMenuSubtitle({Key key, @required this.subTitleName});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.topLeft,
        child: Text(
          "$subTitleName",
          style: TextStyle(
            fontSize: size.width / 19,
            color: whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
