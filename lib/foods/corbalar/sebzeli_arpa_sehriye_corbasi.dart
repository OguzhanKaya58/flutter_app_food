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

class SebzeliArpaSehriyeCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sebzeli Arpa Şehriye Çorbası",
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
                imagePath: "images/sebzeli-arpa-sehriye-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "10dk",
                cooking: "35dk",
              ),
              Materials(),
              FoodMaterial(name: "2 yemek kaşığı zeytinyağı"),
              FoodMaterial(name: "1 soğan"),
              FoodMaterial(name: "1 domates"),
              FoodMaterial(name: "1 yeşil biber"),
              FoodMaterial(name: "1 havuç"),
              FoodMaterial(name: "1 yemek kaşığı tereyağı"),
              FoodMaterial(name: "1 yemek kaşığı domates salçası"),
              FoodMaterial(name: "1 tutam maydanoz"),
              FoodMaterial(name: "1 tablet tavuk bulyon"),
              FoodMaterial(name: "1 tatlı kaşığı tuz"),
              FoodMaterial(name: "Karabiber, Pulbiber"),
              FoodMaterial(name: "1 çay bardağı arpa şehriye"),
              FoodMaterial(name: "6-7 su bardağı su"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Soğan ve biberi küçük küçük doğrayıp zeytinyağı ile yumuşayana kadar kavuralım. Üzerine küçük küçük doğranmış havuçları ekleyip karıştıralım. "
                      "\n\n2. Bir domates rendeleyip üzerine ekleyelim hepsini birlikte kavurmaya devam edelim. "
                      "\n\n3. Üzerine bulyon ve tereyağı ekleyip karıştıralım. Salça ilave edip 2-3 dk daha kavuralım. "
                      "\n\n4. Üzerine sıcak su ilave edelim kaynadıktan sonra şehriyeleri içerisine dahil edelim. "
                      "\n\n5. Şehriyeler yumuşamaya başladığında küçük küçük doğradığımız maydanozları ekleyelim. Kısık ateşte pişmeye bırakalım. "
                      "\n\n6. Tuz karabiber pul biber ekleyelim. Çorba koyulaşıp kıvam alana kadar kaynatalım. Sıcak sıcak servis yapalım. Limon ile de nefis oluyor. Afiyet olsun "),
            ],
          ),
        ),
      ),
    );
  }
}
