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

class PirasaliBulgurPilavi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Pırasalı Bulgur Pilavı",
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
                imagePath: "images/pirasali-bulgur-pilavi.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "5dk",
                cooking: "25dk",
              ),
              Materials(),
              FoodMaterial(name: "2 dal pırasa"),
              FoodMaterial(name: "1 kuru soğan"),
              FoodMaterial(name: "1 yemek kaşığı salça"),
              FoodMaterial(name: "Yarım çay bardağı zeytinyağı"),
              FoodMaterial(name: "Bir kaç yemek kaşığı sıvıyağ"),
              FoodMaterial(name: "3 su bardağı bulgur"),
              FoodMaterial(name: "1 bulyon"),
              FoodMaterial(name: "1 fiske tuz"),
              FoodMaterial(name: "Karabiber, Pulbiber, Kuru Nane,"),
              FoodMaterial(name: "4 su bardağı sıcak su"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Pırasa ve soğanı çok küçük olmayacak şekilde doğruyoruz. Salçamızı katıyoruz karıştırıyoruz. "
                      "\n\n2. Bulgurumuzu yıkayıp ekliyoruz. Bulyon tuz ve baharatları da katıp 5 dakika kısık ateşte bir güzel kavuruyoruz. "
                      "\n\n3. En son 4 su bardağı kaynatılmış suyu ekleyip kapağını kapatıp en kısık ateşte suyunu çekip demlenmesini bekliyoruz. "
                      "\n\n4. Su çekilince altını kapatıp güzelce karıştırıp sıcak sıcak servis tabağına alıp servis ediyoruz afiyet olsun"),
            ],
          ),
        ),
      ),
    );
  }
}
