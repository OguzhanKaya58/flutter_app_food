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

class TenceredePatlicanOturtma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tencerede Patlıcan Oturtma",
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
                imagePath: "images/tencerede-patlican-oturtma.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "1 saat",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "5 adet patlıcan"),
              FoodMenuSubtitle(subTitleName: "Kızartmak için:"),
              FoodMaterial(name: "Sıvı yağ"),
              FoodMaterial(name: "200 gram kıyma"),
              FoodMaterial(name: "1 küçük soğan"),
              FoodMaterial(name: "Karabiber, tuz"),
              FoodMaterial(name: "3 yeşil biber"),
              FoodMaterial(name: "3 domates"),
              FoodMaterial(name: "1 yemek salça"),
              FoodMaterial(name: "Sıcak su"),
              FoodMaterial(name: "Tuz"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Patlıcanlar alacalı soyulup yuvarlak doğranıp tuzlu suda 30 dk bekletilir. "
                      "\n\n2. Elimizle suyunu sıkıp kızgın sıvı yağda kızartıyoruz. "
                      "\n\n3. Havlu kağıdın üzerine alıyoruz. "
                      "\n\n4. Biberleri doğrayıp onları da kızartıp alıyoruz. "
                      "\n\n5. Tavaya azıcık yağ koyup, soğanı küçücük doğrayıp kıymayla kavuruyoruz. "
                      "\n\n6. Tencereye bir sıra patlıcan dizip, üstüne Kıymalı harcı koyuyoruz. "
                      "\n\n7. Üstüne tekrar patlıcan ve biber diziyoruz. "
                      "\n\n8. Domateslerin kabuklarını soyup küçük küçük doğrayıp yemeğin üzerine serpiyoruz. "
                      "\n\n9. 2 su bardağı sıcak suya salçayı ekleyip eritiyoruz. "
                      "\n\n10. Tuz da serpip Salçalı sosu yemeğin üstüne gezdirip, orta ateşte 15 – 20 dk kadar pişiriyoruz. Afiyet olsun."),
            ],
          ),
        ),
      ),
    );
  }
}
