import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_food/theme.dart';
import 'package:flutter_app_food/widgets/fabrication.dart';
import 'package:flutter_app_food/widgets/food_material.dart';
import 'package:flutter_app_food/widgets/image_path.dart';
import 'package:flutter_app_food/widgets/materials.dart';
import 'package:flutter_app_food/widgets/preparation.dart';
import 'package:flutter_app_food/widgets/recipe.dart';

class HasbeliAs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hasbeli Aş",
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
                imagePath: "images/hasbeli-as.jpg",
              ),
              Preparation(
                howManyPerson: "1-2",
                preparation: "5dk",
                cooking: "25dk",
              ),
              Materials(),
              FoodMaterial(name: "1 çay bardağı hasbe"),
              FoodMaterial(name: "1 su bardağı bulgur"),
              FoodMaterial(name: "1 tatlı kaşığı salça tuz"),
              FoodMaterial(name: "Karabiber"),
              FoodMaterial(name: "Toz biber"),
              FoodMaterial(name: "Yarım fincan zeytinyağı"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Hasbeyi 2 veya 3 bardak suda iyice kaynatalım piştikten sonra içine baharatları, salçayı ve zeytinyağını ekleyip 5 dk daha kaynatalım. "
                      "\n\n2. 1 bardak bulguru da ekleyip altını kısık en küçük ocakta pişirelim suyunu çekince tamamdır. "
                      "\n\n3. Turşuyla harikaa oluur:) Not. Hasbe yeşil mercimeğe benzer ama daha küçüktür. Güneydoğuda rahatlıkla bulunur. "),
            ],
          ),
        ),
      ),
    );
  }
}
