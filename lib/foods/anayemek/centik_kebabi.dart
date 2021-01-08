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

class CentikKebabi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Çentik Kebabı",
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
              ImagePath(imagePath: "images/Çentik-Kebabı.jpg",),
              Preparation(
                howManyPerson: "4-6",
                preparation: "45dk",
                cooking: "1 saat",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Et için:"),
              FoodMaterial(name: "400 gram dana eti"),
              FoodMaterial(name: "4 yemek kaşığı zeytinyağı"),
              FoodMaterial(name: "1 küçük kuru soğan"),
              FoodMaterial(name: "1 diş sarımsak"),
              FoodMaterial(name: "1 tatlı kaşığı pul biber"),
              FoodMaterial(name: "1 çay kaşığı karabiber"),
              FoodMaterial(name: "1 çay kaşığı tuz"),
              FoodMenuSubtitle(subTitleName: "Kızartma için:"),
              FoodMaterial(name: "6 adet büyük patates"),
              FoodMaterial(name: "Sıvı yağ"),
              FoodMenuSubtitle(subTitleName: "Yoğurt sosu:"),
              FoodMaterial(name: "7 yemek kaşığı yoğurt"),
              FoodMaterial(name: "4 diş sarımsak"),
              FoodMaterial(name: "1 çay kaşığı tuz"),
              FoodMenuSubtitle(subTitleName: "Domates sosu için:"),
              FoodMaterial(name: "2 yemek kaşığı sıvı yağı"),
              FoodMaterial(name: "1 adet büyük domates"),
              FoodMaterial(name: "1 tatlı kaşığı salça"),
              FoodMaterial(name: "1 tatlı kaşığı pul biber"),
              FoodMaterial(name: "1 çay kaşığı karabiber"),
              FoodMaterial(name: "1 çay kaşığı tuz"),
              Fabrication(),
              Recipe(recipeName: "1. Patatesler soyulur ve çok ince çıbık gibi uzun uzun doğranıp daha sonra çok kızgın yağda kızartılır. \n\n2. Diğer tarafta et ince ve jülyen usulü doğranıp tavada suyunu çekene kadar pişirilir. Daha sonra yağı soğanı ve sarımsağı ilave edilerek pişirilmeye devam edilir. Baharatı tuzu katılıp kenara alınır. \n\n3. Tavada sıvı yağ baharat ve salça kavrulur. Rendelenen domates ilave edilerek bir kaç dakika daha pişirilip kenara alınır. \n\n4. Yoğurt ile çok küçük doğranmış sarımsaklar ve tuz katılıp yoğurt karışımı hazırlanır. \n\n5. Büyük servis tabağına ilk önce kızartma patates döşenir. Daha sonra sırasıyla yoğurt domates ve en üste et döşenerek servis edilir. Afiyet olsun.",),
            ],
          ),
        ),
      ),
    );
  }
}
