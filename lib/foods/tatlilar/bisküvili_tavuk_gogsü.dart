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

class BisluviliTavukGogsu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Bisküvili Yalançı Tavuk Göğsü",
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
                imagePath: "images/yalanci-tavuk-göğsü.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "20dk",
                cooking: "0dk",
              ),
              Materials(),
              FoodMaterial(name: "2 paket petibör bisküvi"),
              FoodMenuSubtitle(subTitleName: "Tavukgöğsü İçin:"),
              FoodMaterial(name: "125 gram tereyağı"),
              FoodMaterial(name: "1 su bardağı un"),
              FoodMaterial(name: "1.5 su bardağı toz şeker"),
              FoodMaterial(name: "1 litre süt"),
              FoodMaterial(name: "1 paket vanilya"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Önce tereyağını tencerede eritiyoruz ve üzerine unu ekleyip yakmadan 2-3 dakika sürekli karıştırarak kavuruyoruz. "
                      "\n\n2. Sonra şekeri ekleyip 1 dakika daha kavuruyoruz. "
                      "\n\n3. Üzerine sütü yavaş ve dikkatli şekilde ekleyerek topaklanmaması için hızlı hızlı karıştırıyoruz. "
                      "\n\n4. Orta ateşte koyulaşana kadar karıştırarak pişiriyoruz. "
                      "\n\n5. Altını kapatıp vanilyayı ekliyoruz ve karıştırıyoruz. "
                      "\n\n6. Ara ara karıştırarak ilk sıcağının çıkmasını sağlıyoruz. "
                      "\n\n7. Biraz ılınınca mikserle 1 dakika kadar çırpıyoruz. "
                      "\n\n8. Kullanacağımız kalıbın dibine tek kat bisküvi serip hazırladığımız tatlıdan ince bir kat bisküvilerin üzerine döküyoruz ve kaşığın arkasıyla (veya spatulayla) yayıyoruz. "
                      "\n\n9. Üzerine bir kat daha bisküvi seriyoruz. "
                      "\n\n10. Kalan tatlının yarısını bisküvilerin üzerine yayıyoruz. "
                      "\n\n11. Son kat bisküvi seriyoruz ve kalan tatlıyı döküp eşit şekilde yayılmasını sağlıyoruz. "
                      "\n\n12. Kalan bisküvileri un haline getirip üzerine süs yapıyoruz. Ben ayrıca kakao da serptim. "
                      "\n\n13. Tatlımız oda sıcaklığına gelince buzdolabına kaldırıp 2 saat kadar dinlendiriyoruz. "
                      "\n\n14. Çıkarınca dilimleyerek servis yapıyoruz. "),
            ],
          ),
        ),
      ),
    );
  }
}
