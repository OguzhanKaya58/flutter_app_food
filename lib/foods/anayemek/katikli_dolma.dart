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

class KatikliDolma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Katıklı Dolma",
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
                imagePath: "images/katikli-dolma.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "20dk",
                cooking: "40dk",
              ),
              Materials(),
              FoodMaterial(name: "5-6 adet kabak"),
              FoodMenuSubtitle(subTitleName: "Köftesi İçin:"),
              FoodMaterial(name: "350 gr. köftelik kıyma"),
              FoodMaterial(name: "1,5 su bardağı köftelik bulgur"),
              FoodMaterial(name: "1 tatlı kaşığı domates salçası"),
              FoodMaterial(name: "1 tatlı kaşığı biber salçası"),
              FoodMaterial(name: "1 adet ince kıyılmış kuru soğan"),
              FoodMaterial(name: "Karabiber, Pulbiber, Kimyon"),
              FoodMaterial(name: "Kuru reyhan, Tuz"),
              FoodMenuSubtitle(subTitleName: "Sosu İçin:"),
              FoodMaterial(name: "1 yemek kaşığı domates salçası"),
              FoodMaterial(name: "Tereyağı ve zeytinyağı karışık"),
              FoodMaterial(name: "Arzuya göre sarımsaklı yoğurt"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Köfte malzemelerini yoğurma kabına alıyoruz. Güzelce yoğurup birbirini almasını sağlıyoruz. "
                      "\n\n2. Kabakları yıkayıp 2 şer santim kalınlığında kesiyoruz. "
                      "\n\n3. İçlerini oyup köfte harcından koyuyoruz. "
                      "\n\n4. Tavaya dizip üzerine zeytinyağı gezdiriyoruz. "
                      "\n\n5. Üzerine dolma kapağı koyup su ilave ediyoruz. "
                      "\n\n6. Kaynamaya başlayınca 40 dakika kadar pişiriyoruz. "
                      "\n\n7. Sosu için de yağları bir tavaya alıp salçayı kavuruyoruz. Çok az su ilave edip biraz daha pişiriyoruz. "
                      "\n\n8. Pişen dolmamızı servis tabağına alıp sarımsaklı yoğurt ve sosuyla birlikte servis ediyoruz. "),
            ],
          ),
        ),
      ),
    );
  }
}
