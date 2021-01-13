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

class FirinPosetindeKabakTatlisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Fırın Poşetinde Kabak Tatlısı",
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
              ImagePath(imagePath: "images/firin-posetinde-kabak-tatlisi.JPG",),
              Preparation(
                howManyPerson: "4-6",
                preparation: "5dk",
                cooking: "40dk",
              ),
              Materials(),
              FoodMaterial(name: "1,5 kg temizlenmiş kabak"),
              FoodMaterial(name: "2,5 su bardağı şeker"),
              FoodMaterial(name: "Yarım çay bardağı su"),
              FoodMenuSubtitle(subTitleName: "Üzeri için:"),
              FoodMaterial(name: "Ceviz"),
              FoodMaterial(name: "Tahin"),
              Fabrication(),
              Recipe(recipeName: "1. Kabakları yıkayıp istediğimiz büyüklükte doğrayalım. \n\n2. Üzerine şekeri serpip karıştıralım. \n\n3. Fırın poşetine kabakları koyalım ve yarım çay bardağı da su ilave edelim. \n\n4. Ağzını sıkıca kapatıp üzerinden bıçakla delik açalım. \n\n5. Önceden ısıttığımız fırında yumuşayıp hafif kızarana kadar pişirelim. \n\n6. Soğuduktan sonra ceviz ve tahinle servis edelim. Deneyenlere şimdiden AFİYETLER OLSUN.",),
            ],
          ),
        ),
      ),
    );
  }
}
