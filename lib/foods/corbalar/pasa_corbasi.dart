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

class PasaCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Paşa Çorbası",
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
                imagePath: "images/Paşa-Çorbası.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "30dk",
                cooking: "45dk",
              ),
              Materials(),
              FoodMaterial(name: "2 parça tavuk budu"),
              FoodMaterial(name: "2 su bardağı yoğurt"),
              FoodMaterial(name: "2 kaşık un"),
              FoodMaterial(name: "1 su bardağı haşlanmış nohut"),
              FoodMaterial(name: "Yarım çay bardağı tel şehriye"),
              FoodMaterial(name: "1 çorba kaşığı tuzot"),
              FoodMaterial(name: "5 su bardağı tavuk suyu"),
              FoodMenuSubtitle(subTitleName: "Üzeri için:"),
              FoodMaterial(name: "Tereyağı ve kırmızı toz biber"),
              Fabrication(),
              Recipe(
                  recipeName: "1. Tavuklar haşlanıp didilir. "
                      "\n\n2. Yoğurt ve un bir kapta çırpılır ve tencereye aldığımız tavuk suyuna katılıp kaynayana dek karıştırılarak pişirilir. "
                      "\n\n3. Sırasıyla nohut tel şehriye ve tavuk parçacıkları eklenir. "
                      "\n\n4. Şehriyeler piştiğinde tuzot ve tuz eklenip bir taşım kaynatılır. "
                      "\n\n5. Ayrı bir tavada kızdırılan yağ ve biber üzerine dökülerek servis edilir. Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
