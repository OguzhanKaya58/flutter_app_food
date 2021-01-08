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

class SutluRuloTatlo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sütlü Rulo Tatlı",
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
                imagePath: "images/Sütlü-Rulo-Tatlı.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "5dk",
                cooking: "15dk",
              ),
              Materials(),
              FoodMaterial(name: "140 gram kadar tereyağı ya da margarin"),
              FoodMaterial(name: "1 bardak un"),
              FoodMaterial(name: "1 litre soğuk süt"),
              FoodMaterial(name: "1 bardak artı 3 yemek kaşığı toz şeker"),
              FoodMaterial(name: "1 yemek kaşığı buğday nişastası"),
              FoodMaterial(name: "1 paket vanilya "),
              FoodMaterial(name: "1 paket kakaolu petibör bisküvi"),
              FoodMaterial(name: "Arasına koymak için ceviz ve damla çikolata"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Öncelikle bisküvileri rondo da kum gibi olana kadar çekin dikdörtgen bir borcama güzelce yayın. "
                      "\n\n2. Muhallebisi için yağı tencerede tamamen eritin unu ekleyerek kaşıkla hızlıca kavurun 3-4 dk kadar sürüyor bu süreç ardından sütü yavaş yavaş ekleyerek çırpma teliyle karıştırın ve toz şekeri ilave edin bir iki dk sonra buğday nişastasını ekleyerek çırparak pişirmeye devam edin. "
                      "\n\n3. Kaynamaya başladığı an vanilyayı ekleyip 3 4 dk civarı fokurdatıp altını kapatın muhallebiniz pürüzsüz olmazsa mikserle 3-4 dk kadar çırpabilirsiniz. "
                      "\n\n4. Sıcak olan muhallebiyi borcama eşit bir şekilde yayın sıcaklığı geçtikten sonra dolaba koyun. "
                      "\n\n5. Bir saat dinlensin, sonra dilimlere bölün damla çikolata ve ceviz ekleyip güzelce sarın dipte kalan bisküvi tozlarını beyaz kalan yerlere iyice serpiştirin, lezzeti bir gece beklettikten sonra çok daha güzel oluyor deneyecek olanlara afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
