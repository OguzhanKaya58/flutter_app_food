import 'package:flutter/material.dart';

class ImagePath extends StatelessWidget {
  final String imagePath;

  ImagePath({Key key, @required this.imagePath});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topCenter,
      height: size.height / 3.18,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("$imagePath"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
