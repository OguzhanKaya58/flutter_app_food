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

class HamursuzArabasiCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hamursuz Arabaşı Çorbası",
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
                imagePath: "images/hamursuz-arabasi-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "5dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(name: "1 adet haşlanmış tavuk göğsü eti"),
              FoodMaterial(name: "1 çorba kaşığı un"),
              FoodMaterial(name: "1 çorba kaşığı zeytinyağı"),
              FoodMaterial(name: "1 çorba kaşığı tereyağı"),
              FoodMaterial(name: "1 yemek kaşığı domates salçası"),
              FoodMaterial(name: "1 yemek kaşığı biber salçası"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "1 su bardak tavuk suyu"),
              FoodMaterial(name: "3-4 su bardak su"),
              FoodMaterial(name: "Pul biber, Kimyon, Karabiber, Nane"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Tencereye zeytinyağı ve tereyağını alıp ısıtın. "
                      "\n\n2. Üzerine un katıp kavurun. Un kokusu çıktıktan sonra salçalarını katın, biraz daha kavurun. "
                      "\n\n3. Üzerine su katıp unu açın. Baharatlarını, küçük kesilmiş tavuk etini, tavuk suyunu katıp karıştırılarak pişirin. "
                      "\n\n4. Sıcak servis edin. Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
