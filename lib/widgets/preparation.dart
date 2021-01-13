import 'package:flutter/material.dart';
import 'package:flutter_app_food/theme.dart';

class Preparation extends StatelessWidget {
  final String howManyPerson;
  final String preparation;
  final String cooking;

  Preparation(
      {Key key,
      @required this.howManyPerson,
      @required this.preparation,
      @required this.cooking});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Kaç Kişilik: $howManyPerson",
            style: TextStyle(
              fontSize: size.width/33,
              color: whiteColor,
            ),
          ),
        ),
        SizedBox(
          width: size.width / 36,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Hazırlama: $preparation",
            style: TextStyle(
              fontSize: size.width/33,
              color: whiteColor,
            ),
          ),
        ),
        SizedBox(
          width: size.width / 36,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Pişirme: $cooking",
            style: TextStyle(
              fontSize: size.width/33,
              color: whiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
