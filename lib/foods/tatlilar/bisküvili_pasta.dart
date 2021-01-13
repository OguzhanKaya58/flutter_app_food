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

class BiskuviliPasta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Bisküvili Pasta",
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
                imagePath: "images/Bisküvili-Pasta.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "20dk",
                cooking: "15dk",
              ),
              Materials(),
              FoodMaterial(name: "3 paket petibör bisküvi"),
              FoodMenuSubtitle(subTitleName: "Kakaolu puding için:"),
              FoodMaterial(name: "6 su bardağı süt"),
              FoodMaterial(name: "4 yemek kaşığı kakao"),
              FoodMaterial(name: "1 su bardağı toz şeker"),
              FoodMaterial(name: "3 tepeleme yemek kaşığı un"),
              FoodMaterial(name: "1 paket vanilya"),
              FoodMaterial(name: "1 yemek kaşığı tereyağı"),
              FoodMenuSubtitle(subTitleName: "Üzeri için:"),
              FoodMaterial(name: "Bisküvi"),
              FoodMaterial(name: "Çilek"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. İlk olarak puding malzemelerini karıştırıp paketinde yazdığı gibi karıştırarak pişirelim. Altının pişerken tutmaması için ateşi çok yüksek açmamaya ve sürekli karıştırmaya dikkat edelim. "
                      "\n\n2. Sonra istediğiniz tepsinin altını çok hafifçe biraz ıslatalım ve bisküvileri dizelim. "
                      "\n\n3. Pudingden üzerini örtecek kadar gezdirelim. "
                      "\n\n4. Bisküvi ve puding bitene kadar eşit bir şekilde kat kat dizelim. Son kat olarak pudingle kapatalım. "
                      "\n\n5. Oda sıcaklığına kadar ılıyan pastayı buzdolabında 1-2 saat dinlendirelim. "
                      "\n\n6. Servis yapmadan önce dilimleyerek süsleyelim. "),
            ],
          ),
        ),
      ),
    );
  }
}
