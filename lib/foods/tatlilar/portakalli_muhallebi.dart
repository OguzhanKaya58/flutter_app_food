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

class PortakalliMuhallebi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Portakallı Muhallebi",
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
                imagePath: "images/portakalli-muhallebi.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "5dk",
                cooking: "15dk",
              ),
              Materials(),
              FoodMaterial(name: "1 litre süt"),
              FoodMaterial(name: "1 poşet pirinç un(70 gram)"),
              FoodMaterial(name: "2 yemek kaşığı un"),
              FoodMaterial(name: "7 yemek kaşığı şeker"),
              FoodMaterial(name: "1 tatlı kaşığı tereyağ"),
              FoodMaterial(name: "2 paket vanilya"),
              FoodMenuSubtitle(subTitleName: "Portakal sosu için:"),
              FoodMaterial(name: "1 su bardağı taze sıkılmış portakal suyu"),
              FoodMaterial(name: "3 yemek kaşığı şeker"),
              FoodMaterial(name: "1 tatlı kaşığı tepeleme nişasta"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Süt, un, pirinç unu ve şeker tencereye alınarak karıştırılır. "
                      "\n\n2. Kaynayıncaya kadar karıştırılmaya devam edilir. Göz göz olunca ocak kapatılarak vanilya ve tereyağı ilave edilir. Mikserde 5 dakika kadar çırpılır. "
                      "\n\n3. Kaseler veya kuplara iki parmak kadar boş bırakılarak doldurulur. "
                      "\n\n4. Küçük bir tencerede portakal suyu, nişasta ve şeker konularak ocakta karıştırılarak kaynayıncaya kadar pişirilir. "
                      "\n\n5. Hafif soğumuş muhallebilerin üzerine sostan eşit bir şekilde ilave edilir. "
                      "\n\n6. Buzdolabında 5-6 saat kadar soğutulduktan sonra servis edilir. Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
