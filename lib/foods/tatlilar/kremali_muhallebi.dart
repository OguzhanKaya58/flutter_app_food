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

class KramaliMuhallebi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Kramalı Muhallebi",
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
                imagePath: "images/kramali-muhallebi.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "10dk",
                cooking: "10dk",
              ),
              Materials(),
              FoodMaterial(name: "1 litre tam yağlı süt"),
              FoodMaterial(name: "1 kutu çiğ krema"),
              FoodMaterial(name: "5 yemek kaşığı tepeleme un"),
              FoodMaterial(name: "2 silme yemek kaşığı nişasta"),
              FoodMaterial(name: "1 su bardağı toz şeker"),
              FoodMaterial(name: "2 vanilin (kaynadıktan sonra ekliyoruz)"),
              FoodMaterial(name: "Bisküvi kırıntısı"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. İlk önce vanilin hariç bütün malzemeyi tencereye alalım ve 2-3 dakika çırpalım. "
                      "\n\n2. Çırptıktan sonra ocağın altını açalım ve kısık ateşte devamlı karıştırarak kaynatalım. "
                      "\n\n3. Kaynamaya başlayınca 2-3 dakika karıştırarak bekleyelim. Altını kapattıktan sonra 2 vanilin ekleyip karıştırmaya devam edelim. Bu şekilde pütürsüz oluyor. "
                      "\n\n4. Kalıbı ıslatalım veya içine bisküvi kırıntısı dökelim ve muhallebiyi içine dökelim. Ilıdıktan sonra buzdolabında bekletelim. "),
            ],
          ),
        ),
      ),
    );
  }
}
