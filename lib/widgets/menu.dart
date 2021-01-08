import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_food/theme.dart';

class Menu extends StatelessWidget {
  final String name;
  final String imgPath;
  final String calorie;

  const Menu({
    Key key,
    @required this.name,
    @required this.imgPath,
    @required this.calorie,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(7),
      height: size.height / 5,
      width: size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(48),
          bottomRight: Radius.circular(48),
        ),
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              kPrimaryColor,
              kPrimaryLightColor,
            ]),
      ),
      child: Row(
        children: [
          Container(
            height: size.height,
            width: size.width / 2.5,
            padding: EdgeInsets.all(24),
            alignment: Alignment.centerLeft,
            child: Text(
              "$name",
              style: TextStyle(
                color: whiteColor,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: size.height,
            width: size.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black87,
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: Offset(-5, 6), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          bottomRight: Radius.circular(24),
                        ),
                        image: DecorationImage(
                          image: AssetImage("$imgPath"),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.blue.shade200),
                    height: size.height / 8,
                    width: size.width / 2,
                  ),
                ),
                Text(
                  "$calorie",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
