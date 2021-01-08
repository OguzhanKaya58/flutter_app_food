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

class ArpaSehriyeliPilav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Arpa Şehriyeli Pilav",
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
                imagePath: "images/arpa-sehriyeli-pilav.jpg",
              ),
              Preparation(
                howManyPerson: "8-10",
                preparation: "5dk",
                cooking: "25dk",
              ),
              Materials(),
              FoodMaterial(name: "2,5 su bardağı arpaşehriye"),
              FoodMaterial(name: "1 yemek kaşığı tereyağ"),
              FoodMaterial(name: "Yarım çay bardağı sıvı yağ"),
              FoodMaterial(name: "Tuz damak zevkinize göre ayarlayın"),
              FoodMaterial(name: "Sıcak su"),
              FoodMenuSubtitle(subTitleName: "Servis önerisi:"),
              FoodMaterial(name: "Yoğurt"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Tereyağını eritin. Sıvı yağ da ekledikten sonra şehriyeleri renk alana kadar kavurun. "
                      "\n\n2. Sıcak su tuz ekleyip kapağını kapattıktan sonra suyunu çekene kadar pişirin. "
                      "\n\n3. Piştikten sonra dinlenmeye bırakın sonra Afiyetle Tüketiyoruz Şimdiden Olsun "),
            ],
          ),
        ),
      ),
    );
  }
}
