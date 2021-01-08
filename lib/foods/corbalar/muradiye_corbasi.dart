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

class MuradiyeCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Muradiye Çorbası",
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
                imagePath: "images/muradiye-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "30dk",
                cooking: "15dk",
              ),
              Materials(),
              FoodMaterial(name: "1 parça tavuk göğsü"),
              FoodMaterial(name: "1 adet kabak"),
              FoodMaterial(name: "1 adet havuç"),
              FoodMaterial(name: "2 yemek kaşığı arpa şehriye"),
              FoodMaterial(name: "3 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "5 su bardağı su"),
              FoodMaterial(name: "Tuz, karabiber"),
              FoodMaterial(name: "1 adet et bulyon(isteğe göre)"),
              FoodMenuSubtitle(subTitleName: "Terbiyesi için:"),
              FoodMaterial(name: "1 su bardağı yoğurt"),
              FoodMaterial(name: "2 yemek kaşığı un"),
              FoodMaterial(name: "Yarım çay bardağı su"),
              FoodMenuSubtitle(subTitleName: "Üzeri için:"),
              FoodMaterial(name: "1 yemek kaşığı tereyağ"),
              FoodMaterial(name: "1 tatlı kaşığı nane"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Önce tavuk etini, kabak ve havuçu küçük küçük küp şeklinde doğrayın. "
                      "\n\n2. Tencereye sıvı yağı koyup önce etleri iyice pişirin sonra kabak ve havuçları ekleyip 5 dakika kavurun. "
                      "\n\n3. Üzerine 5 su bardağı sıcak su ekleyip kabak ve havuçlar az pişene kadar kaynatın üzerine arpa şehriyeyi ilave edip şehriyeler şişene kadar kaynatın. "
                      "\n\n4. Yoğurt ve unu karıştırıp yarım çay bardağı su ile açın kaynayan çorba suyundan 1 kepçe alıp yoğurda karıştırın bunu yapmamızın sebebi yoğurdu ilave edince kesilmemesi içindir. "
                      "\n\n5. Yoğurdu çorbaya ilave edip karıştırın ve 1-2 dakika daha kaynatıp tuz ve karabiberini ekleyin. "
                      "\n\n6. İsteğe göre et bulyonu da ekleyin. Eğer bulyon koyarsanız tuzunu az ilave edin. "
                      "\n\n7. Kaynadıktan sonra ocağın altını kapatın. "
                      "\n\n8. Üzerine 1 yemek kaşığı tereyağlı naneyi yakıp çorbanın üzerine dökün. AFİYET OLSUN "),
            ],
          ),
        ),
      ),
    );
  }
}
