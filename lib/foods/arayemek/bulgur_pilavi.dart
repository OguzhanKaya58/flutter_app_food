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

class BulgurPilavi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bulgur Pilavı",
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
                imagePath: "images/bulgurPilavi.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "15dk",
                cooking: "25dk",
              ),
              Materials(),
              FoodMaterial(name: "2 su bardağı pilavlık bulgur"),
              FoodMaterial(name: "2 adet domates"),
              FoodMaterial(name: "1 adet soğan"),
              FoodMaterial(name: "2 adet sivri biber"),
              FoodMaterial(name: "1 su bardağı tavuk suyu"),
              FoodMaterial(name: "2,5 su bardağı sıcak su"),
              FoodMaterial(name: "4 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "Tuz"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Bulgur pilavı için öncelikle soğanları ince kıyın, sıvı yağ ile hafif kavurun. "
                      "\n\n2. Üzerine doğranmış sivri biberi ekleyin, biraz daha kavurduktan sonra rende domatesi ekleyin, iyice kavurun. "
                      "\n\n3. Bulguru ekleyerek 1-2 dakika kavurun ve sıcak tavuk suyunu ve sıcak suyu ekleyin. "
                      "\n\n4. Tuzunu da ilave ederek bir kez karıştırın kapağını kapatın. "
                      "\n\n5. Kısık ateşte suyu çekene kadar karıştırmadan pişirin. "
                      "\n\n6. Ocağı kapattıktan sonra kapağın altına havlu kağıt koyarak 10 dakika kadar dinlendirin. "
                      "\n\n7. Bulgur Pilavımız servise hazır, deneyeceklere şimdiden afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
