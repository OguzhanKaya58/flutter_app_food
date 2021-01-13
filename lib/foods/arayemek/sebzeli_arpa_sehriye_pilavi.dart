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

class SebzeliArpaSehriyePilavi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Sebzeli Arpa Şehriye Pilavı",
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
                imagePath: "images/sebzeli-arpa-sehriye-pilav.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "10dk",
                cooking: "15dk",
              ),
              Materials(),
              FoodMaterial(name: "1 su bardağı arpa şehriye"),
              FoodMaterial(name: "2 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "1 adet havuç"),
              FoodMaterial(name: "1 küçük boy pırasa"),
              FoodMaterial(name: "1 adet bulyon"),
              FoodMaterial(name: "1 buçuk bardak sıcak su"),
              FoodMaterial(name: "1 çay kaşığından az tuz"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Havucumuzu yıkayıp rendeliyoruz, pırasamızı da ince ince doğruyoruz. Teflon tencereye sıvı yağı ve şehriyeleri koyuyoruz. "
                      "\n\n2. Pembeleşene kadar kavuruyoruz daha sonra rendelediğimiz havucu ve pırasaları ilave edip hepsini biraz daha kavuruyoruz. "
                      "\n\n3. Pırasa ve havuçlar yumuşayınca bulyon, tuz ve suyumuzu ekleyip kısık ateşte pişiriyoruz."
                      "\n\n4. Mis gibi kokulu pilavı sizlere sunuyorum. Afiyet olsun"),
            ],
          ),
        ),
      ),
    );
  }
}
