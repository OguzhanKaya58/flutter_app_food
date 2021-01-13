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

class FirindaEtimekliBasemelSosluTavuk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Fırında Etimekli Beşamel Soslu Tavuk",
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
                imagePath: "images/Fırında-Etimekli-Beşamel-Soslu-Tavuk.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "10dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "8-9 tane etimek"),
              FoodMaterial(name: "500 gr kuşbaşı tavuk göğüsü"),
              FoodMaterial(name: "2 kırmızı biber"),
              FoodMaterial(name: "1 paket mantar (400 gr)"),
              FoodMaterial(name: "Tuz"),
              FoodMenuSubtitle(subTitleName: "Beşamel Sos İçin:"),
              FoodMaterial(name: "2 yemek kaşığı tereyağı"),
              FoodMaterial(name: "3 yemek kaşığı un"),
              FoodMaterial(name: "2.5 su bardağı süt"),
              FoodMaterial(name: "Tuz, Karabiber"),
              FoodMenuSubtitle(subTitleName: "Üzeri için :"),
              FoodMaterial(name: "Rendelenmiş kaşar peyniri"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Kuşbaşı tavuğu tavaya alıp 2-3 kaşık sıvı yağ ile ara ara karıştırarak kavuruyoruz. "
                      "\n\n2. Pişmeye yakın tuz ekliyoruz. "
                      "\n\n3. Diğer tarafta mantar yıkanıp kabukları soyup küp küp doğruyoruz. "
                      "\n\n4. Biberlerin içini temizleyip jülyen şeklinde kesiyoruz. "
                      "\n\n5. Mantar ve biberi ayrı ayrı çok az sıvı yağ ile kavuruyoruz. "
                      "\n\n6. Diğer yandan beşamel sos için tencerede tereyağı eritiyoruz ve üzerine un eklenip kavuruyoruz. "
                      "\n\n7. Sütü azar azar döküp karıştırıyoruz. "
                      "\n\n8. Koyu kıvam alana kadar pişiriyoruz ve çok fazla koyu olursa süt ekliyoruz. "
                      "\n\n9. Son olarak tuz ve karabiber ekleyip ocaktan alıyoruz. "
                      "\n\n10. Sosun içine mantar biber ve tavukları atıp karıştırıyoruz. "
                      "\n\n11. Orta boy dikdörtgen borcama 8 yada 9 adet etimek diziyoruz ve sosumuzu döküp spatula ile yayıyoruz. "
                      "\n\n12. Üzerine kaşar peyniri serpiştirip 180 derece fırında yaklaşık 20 dk kızarana kadar pişiriyoruz. Afiyet olsun "),
            ],
          ),
        ),
      ),
    );
  }
}
