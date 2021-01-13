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

class PatlicanliPrincPilavi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Patlıcanlı Pirinç Pilavı",
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
                imagePath: "images/patlicanli-pirinc-pilavi.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "10dk",
                cooking: "35dk",
              ),
              Materials(),
              FoodMaterial(name: "1 adet patlıcan"),
              FoodMaterial(name: "1 büyük soğan"),
              FoodMaterial(name: "2 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "1 tatlı kaşığı tuz"),
              FoodMaterial(name: "Yarım çay kaşığı karabiber"),
              FoodMaterial(name: "1 su bardağı pirinç"),
              FoodMaterial(name: "1,5 su bardağı soğuk su"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Bir teflon tencerenin içine ince doğranmış soğanlar eklenip sıvı yağ ile kavrulur. "
                      "\n\n2. Alaca soyulmuş patlıcan küçük küp küp doğranıp ilave edilir. "
                      "\n\n3. Patlıcanlar 10 dakika kavrulur (ilk önce patlıcanlar yağı emiyor sonra kavruldukça geri bırakıyor). "
                      "\n\n4. Yıkanmış ve suyu süzülmüş pirinç eklenip bir kaç dakika kavrulur. "
                      "\n\n5. Su ve baharatlar eklenip karıştırılır, kapağı kapatılıp 20 dakika kısık ateşte pişirilir. "
                      "\n\n6. Ocaktan alınır ve 10 dakika demlendikten sonra servis edilir. "),
            ],
          ),
        ),
      ),
    );
  }
}
