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

class FirindaEtliKarnabaharYemegi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Fırında Etli Karnabahar Yemeği",
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
                imagePath: "images/Fırında-Etli-Karnabahar-Yemeği.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "30dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(name: "150 -200 gr kuşbaşı dana eti"),
              FoodMaterial(name: "Yarım orta boy karnabahar"),
              FoodMaterial(name: "2 adet patates"),
              FoodMaterial(name: "2 adet havuç"),
              FoodMaterial(name: "1 adet yeşil biber"),
              FoodMaterial(name: "2 adet domates"),
              FoodMaterial(name: "1 adet soğan"),
              FoodMaterial(name: "Sıvı yağ"),
              FoodMaterial(name: "Yarım su bardağı domates püresi"),
              FoodMaterial(name: "Tuz, pul biber, karabiber"),
              FoodMenuSubtitle(subTitleName: "Üzerine:"),
              FoodMaterial(name: "Kaşar rendesi"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Yarım karnabaharı çiçeklerine ayırın ve haşlayın. "
                      "\n\n2. Başka bir tencerede soyulmuş ve orta büyüklükte doğranmış havuç ve patatesleri de dağılmayacak şekilde haşlayın. "
                      "\n\n3. Başka bir tencerede kuşbaşı doğranmış etimizi de pişirelim. "
                      "\n\n4. Pişen sebzelerimizin suyunu süzerek soğumaya bırakalım ve pişen etimizi ayrı bir kaba alalım. "
                      "\n\n5. Bir tavaya sıvı yağında ince doğranmış soğanlar alınır kavrulur. "
                      "\n\n6. Daha sonra ince doğranmış domates ve biberde eklenerek kavrulur domates püresi ,baharatlar ve kuşbaşı doğrayıp pişirdiğimiz eti de ilave edelim 3-4 dk daha pişirelim. "
                      "\n\n7. Borcama veya fırın tepsimize karnabaharları, havuç ve patatesi koyalım üzerine etli sosumuzu dökelim üzerine yayalım. "
                      "\n\n8. En son üzerine kaşar peyniri rendesi serpelim ve fırına atalım. Kaşarlar eriyince fırından alıp servis edelim. "),
            ],
          ),
        ),
      ),
    );
  }
}
