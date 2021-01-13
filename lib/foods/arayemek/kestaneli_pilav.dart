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

class KestaneliPilav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Kestaneli Pilav",
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
                imagePath: "images/Kestaneli-Pilav.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "10dk",
                cooking: "25dk",
              ),
              Materials(),
              FoodMaterial(name: "2 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "1 yemek kaşığı tereyağı"),
              FoodMaterial(name: "1 yemek kaşığı çam fıstığı"),
              FoodMaterial(name: "1 büyük havuç"),
              FoodMaterial(name: "1,5 su bardağı pirinç"),
              FoodMaterial(name: "1 yemek kaşığı kuş üzümü"),
              FoodMaterial(name: "1 kase pişmiş soyulmuş kestane"),
              FoodMaterial(name: "Yarım çay kaşığı karabiber"),
              FoodMaterial(name: "Yarım çay kaşığı yenibahar"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "3 su bardağı sıcak su"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Pilav için sıvı yağ ve tereyağı tencereye koyalım, tereyağı eridikten sonra çam fıstıklarını ekleyelim ve rengi dönene kadar bir kaç dakika kavuralım. "
                      "\n\n2. Julyen doğranmış havuçları ilave edelim, 2-3 dakika daha kavurmaya devam edelim. "
                      "\n\n3. 15 dakika kadar ılık su içerisinde kalan ve yıkadığımız pirinçleri ekleyerek biraz daha kavuralım. "
                      "\n\n4. Kuş üzümü ve kestaneyi ekleyelim, karabiber, yenibahar ve tuzu da ilave ederek karıştıralım. "
                      "\n\n5. Sıcak suyu ekleyip karıştıralım ve kapağını kapatarak suyunu çekene kadar pişirelim. Pilavımızı önce yüksek ateşte sonrasında kısık ateşte pişmeye bırakalım. "
                      "\n\n6. Pilavımız suyunu çektikten sonra ocağın altını kapatalım ve kapağın altına kağıt havlu kapatarak 15 dakika dinlendirelim. "
                      "\n\n7. Süre sonunda pilavımızı yavaşça karıştırarak servis edelim. "),
            ],
          ),
        ),
      ),
    );
  }
}
