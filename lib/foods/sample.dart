import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/fabrication.dart';
import 'package:flutter_app_food/widgets/food_material.dart';
import 'package:flutter_app_food/widgets/food_menu_subtitle.dart';
import 'package:flutter_app_food/widgets/image_path.dart';
import 'package:flutter_app_food/widgets/materials.dart';
import 'package:flutter_app_food/widgets/preparation.dart';
import 'package:flutter_app_food/widgets/recipe.dart';

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "",
          style: TextStyle(color: whiteColor),
        ),
        backgroundColor: appBarColor,
        shadowColor: Colors.transparent,
        leading: BackButton(color: whiteColor),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              kPrimaryColor,
              kPrimaryLightColor,
            ])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ImagePath(
                imagePath: "",
              ),
              Preparation(
                howManyPerson: "",
                preparation: "",
                cooking: "",
              ),
              Materials(),
              FoodMaterial(name: ""),
              FoodMaterial(name: ""),
              FoodMaterial(name: ""),
              FoodMaterial(name: ""),
              FoodMaterial(name: ""),
              FoodMaterial(name: ""),
              FoodMaterial(name: ""),
              FoodMaterial(name: ""),
              FoodMaterial(name: ""),
              FoodMenuSubtitle(subTitleName: ""),
              FoodMaterial(name: ""),
              FoodMaterial(name: ""),
              FoodMaterial(name: ""),
              FoodMaterial(name: ""),
              Fabrication(),
              Recipe(
                  recipeName: "1.  "
                      "\n\n2.  "
                      "\n\n3.  "
                      "\n\n4.  "
                      "\n\n5.  "
                      "\n\n6.  "
                      "\n\n7.  "
                      "\n\n8.  "
                      "\n\n9.  "
                      "\n\n10.  "),
            ],
          ),
        ),
      ),
    );
  }
}
