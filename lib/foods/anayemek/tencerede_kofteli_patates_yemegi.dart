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

class TenceredeKofteliPatatesYemegi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tencerede Köfteli Patates Yemeği",
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
                imagePath: "images/misket-kofteli-patates-yemegi.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "15dk",
                cooking: "35dk",
              ),
              Materials(),
              FoodMaterial(name: "3 adet orta boy patates"),
              FoodMaterial(name: "Yarım yemek kaşığı domates salçası"),
              FoodMaterial(name: "Yarım yemek kaşığı biber salçası"),
              FoodMaterial(name: "2 su bardağı ılık su"),
              FoodMaterial(name: "3 adet yeşil biber"),
              FoodMaterial(name: "1 adet domates"),
              FoodMaterial(name: "2-3 yemek kaşığı sıvı yağ"),
              FoodMenuSubtitle(subTitleName: "Köftesi için:"),
              FoodMaterial(name: "400 gr kıyma"),
              FoodMaterial(name: "1 adet yumurta"),
              FoodMaterial(name: "1 adet küçük soğan"),
              FoodMaterial(name: "Ekmek içi (galeta unu)"),
              FoodMaterial(name: "1 tutam maydanoz"),
              FoodMaterial(name: "Tuz, Karabiber, Kekik, Kimyon"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Derin bir kaba kıyma koyun. Üzerine yumurta, rendelenmiş soğan, ince kıyılmış maydanoz ve ekmek içini ekleyin. Tuz ve baharatları ekleyin. Köfte harcımızı 5 dk kadar yoğurun. "
                      "\n\n2. Harçtan ceviz büyüklüğünde parçalar alın. Elinizle yuvarlak şekil verin. "
                      "\n\n3. Patateslerin kabuklarını soyup, yıkayın. Patatesleri çok ince olmayacak şekilde halkalar halinde kesin. "
                      "\n\n4. Yeşil biberleri ortadan ikiye kesin. "
                      "\n\n5. Domatesi orta büyüklükte doğrayın. "
                      "\n\n6. Yayvan bir tencerenin tabanına patatesleri dizin. Üzerine köfteleri ve boş olan yerlere biber ve domates dilimlerini yerleştirin. "
                      "\n\n7. Bir kasenin içine salçaları koyun. Üzerine su, sıvı yağ ve tuz ekleyin. Salçaları ezerek açın. "
                      "\n\n8. Salçalı karışımı tenceredeki yemeğin üzerine dökün. Tencerenin kapağını kapatın. Kaynamaya başlayınca ocağın altını kısın. Yaklaşık 30-35 dk pişirin. "),
            ],
          ),
        ),
      ),
    );
  }
}
