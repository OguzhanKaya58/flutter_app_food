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

class BaklavalikYufkadanFistikliKatmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Baklavalık Yufkadan Fıstıklı Katmer",
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
                imagePath: "images/Baklavalık-Yufkadan-Fıstıklı-Katmer.jpeg",
              ),
              Preparation(
                howManyPerson: "1-2",
                preparation: "5dk",
                cooking: "5dk",
              ),
              Materials(),
              FoodMaterial(name: "3 adet baklavalık yufka"),
              FoodMaterial(name: "1 yemek kaşığı dolusu kaymak"),
              FoodMaterial(name: "1,5 yemek kaşığı pudra şekeri"),
              FoodMaterial(name: "2 yemek kaşığı yeşil toz fıstık"),
              FoodMaterial(name: "1/2 (yarım) yemek kaşığı tereyağı"),
              FoodMenuSubtitle(subTitleName: "Üzeri İçin:"),
              FoodMaterial(name: "Yeşil toz fıstık"),
              FoodMaterial(name: "Pudra şekeri"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. 3 adet baklavalık yufkayı üst üste gelecek şekilde koyalım. "
                      "\n\n2. Üzerine 1 yemek kaşığı dolusu kaymağı parçalar halinde koyalım. "
                      "\n\n3. Daha sonra sırasıyla pudra şekerini ve toz antep fıstığını serpiştirelim. "
                      "\n\n4. Yufkamızı fotoğrafta görüldüğü gibi katlayalım. "
                      "\n\n5. Tavamızın içerisine yarım yemek kaşığı tereyağını ekleyip ocağımızın üzerine alalım. "
                      "\n\n6. Tereyağı eridikten sonra fıstıklı katmerimizi tavaya koyup önlü arkalı pişirelim. "
                      "\n\n7. Pişen katmerimizin üzerine pudra şekeri ve yeşil toz antep fıstığı serpiştirelim. "
                      "\n\n8. Dilimleyip sıcak olarak servis yapalım. "),
            ],
          ),
        ),
      ),
    );
  }
}
