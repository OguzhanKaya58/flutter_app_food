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

class ArpaSehriyeliBulgur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Arpa Şehriyeli Bulgur",
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
                imagePath: "images/sehriyeli-bulgur-pilavi.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "10dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "1,5 çay bardağı bulgur"),
              FoodMaterial(name: "1 su bardağı arpa şehriye"),
              FoodMaterial(name: "1 adet soğan"),
              FoodMaterial(name: "2 adet çarliston biber"),
              FoodMaterial(name: "1 adet kapya biber"),
              FoodMaterial(name: "2 diş sarımsak"),
              FoodMaterial(name: "4 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "1 çay kaşığı tuz ve baharatlar"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Biberleri, soğanı ve sarımsağı küçük küpler halinde doğrayıp tencerede yağın içinde sotelemeye başlıyoruz.  "
                      "\n\n2. Üzerine arpa şehriyeleri ve pilavlık bulguru ekleyip kavuruyoruz. Üstünü geçecek kadar soğuk su ve tuz ilave edip orta hararetli ateşte kapağı kapalı vaziyette pişiriyoruz. "
                      "\n\n3. 10-15 dakika dinlendirdikten sonra servis edebilirsiniz. Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
