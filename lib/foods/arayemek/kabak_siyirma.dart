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

class KabakSiyirma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kabak Sıyırma",
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
                imagePath: "images/Kabak-Sıyırma.jpg",
              ),
              Preparation(
                howManyPerson: "1-2",
                preparation: "30dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(name: "3 adet orta boy kabak"),
              FoodMaterial(name: "1 adet soğan"),
              FoodMaterial(name: "1 tatlı kaşığı pirinç"),
              FoodMaterial(name: "3 diş sarımsak"),
              FoodMaterial(name: "1 tane limon"),
              FoodMaterial(name: "1 tutam dereotu"),
              FoodMaterial(name: "Zeytinyağı"),
              FoodMaterial(name: "Tuz"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Kabakları soyacak ile çekirdek kısmına gelesiye kadar uzun uzun incecik parçalar halinde kesiyoruz. "
                      "\n\n2. Tüm kabakları bu şekilde yaptıktan sonra 3 diş sarımsağı içine doğrayıp üzerine 1 tane limonu sıkıyoruz ve bekletiyoruz. "
                      "\n\n3. Bu arada 1 tane soğanı doğrayıp zeytinyağında kavuruyoruz. "
                      "\n\n4. Bekleyen kabakları kavrulan soğanların üzerine suyuyla birlikte katıyoruz. "
                      "\n\n5. Kabaklar suyunu salıp çekesiye, sararıya kadar kavuruyoruz. "
                      "\n\n6. Kavrulduktan sonra üzerine yarım çay bardağı su ve 1 tatlı kaşığı pirinci ekliyoruz. "
                      "\n\n7. Pirinçler piştikten sonra üzerine doğranmış dereotunu ekliyoruz ve mezemizi soğumaya bırakıyoruz. Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
