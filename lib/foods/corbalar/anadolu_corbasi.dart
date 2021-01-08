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

class AnadoluCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Anadolu Çorbası",
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
                imagePath: "images/anadolu-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "20dk",
                cooking: "1 saat",
              ),
              Materials(),
              FoodMaterial(name: "8 su bardağı su ( 2 litre )"),
              FoodMaterial(name: "Yarım çay bardağı mercimek"),
              FoodMaterial(name: "Yarım çay bardağı pirinç"),
              FoodMaterial(name: "Yarım çay bardağı buğday"),
              FoodMaterial(name: "1. 5 su bardağı yoğurt"),
              FoodMaterial(name: "2 yemek kaşığı un"),
              FoodMaterial(name: "Tuz "),
              FoodMenuSubtitle(subTitleName: "Sosu için:"),
              FoodMaterial(name: "Nane"),
              FoodMaterial(name: "Kekik"),
              FoodMaterial(name: "Tatlı kırmızı pulbiber"),
              FoodMaterial(name: "Fesleğen"),
              FoodMaterial(name: "Kimyon"),
              FoodMaterial(name: "2 yemek kaşığı sıvı yağı"),
              FoodMaterial(name: "1 diş sarımsak ( rendelenecek )"),
              Fabrication(),
              Recipe(
                  recipeName: "1. 2 litre suyumuzu tenceremize ekliyoruz. "
                      "\n\n2. Mercimeği buğdayı ve pirinçi de ekleyip yarım saat haşlıyoruz ( Not: buğdayı akşamdan suya bırakıp 1 gece dinlendirin. "
                      "\n\n3. Malzemeler yarım saat haşlandıktan sonra yoğurdumuzu unla çırpıp çorbamıza ekliyoruz ve 20 dakika daha kaynatmaya devam ediyoruz. "
                      "\n\n4. Sık sık karıştırın kattığımız un topaklanmasın."
                      "\n\n5. Bir cezvede sıvı yağı ve baharatlarımızı katıp 2 dakika ısıtıp çorbaya ekliyoruz ve tekrardan karıştırıp ocağı kapatıyoruz. "
                      "\n\n6. Biraz ılıyınca servis edebilirsiniz. İsterseniz soğuk olarakta servis edebilirsiniz tam bir yaz çorbası. "),
            ],
          ),
        ),
      ),
    );
  }
}
