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

class KornisonTursu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Kornişon Turşu",
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
                imagePath: "images/kornison-tursu.jpg",
              ),
              Preparation(
                howManyPerson: "1 büyük kavanoz",
                preparation: "35dk",
                cooking: "0dk",
              ),
              Materials(),
              FoodMaterial(name: "1 kg kornişon salatalık"),
              FoodMaterial(name: "1 litre su"),
              FoodMaterial(name: "2,5 yemek kaşığıkaya tuzu"),
              FoodMaterial(name: "1/2 su bardağı sirke"),
              FoodMaterial(name: "1 tatlı kaşığı limon tuzu"),
              FoodMaterial(name: "5 diş sarımsak"),
              FoodMaterial(name: "1/2 demet dereotu"),
              FoodMaterial(name: "10-15 adet nohut"),
              FoodMaterial(name: "1 adet defne yaprağı"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Kornişon salatalıkları yıkayın ve suyunun süzülmesi için süzgeçte bekletin. "
                      "\n\n2. Turşuyu kuracağınız kavanozu kaynar suda 1-2 dakika kaynatın ve ağzı açık kurutun. Bıçak yardımıyla minik delikler açın. "
                      "\n\n3. Turşunun içine ekleyeceğiniz suyu önce bir taşım kaynatın. "
                      "\n\n4. Kaynayan suyun ılımasını bekleyin ve oda sıcaklığına gelince içine kaya tuzu, limon tuzu ve sirkeyi ilave edin. "
                      "\n\n5. Kavanozun en altına temizlenmiş dereotlarının yarısını yerleştirin ve düzgünce salatalıkları yerleştirin. "
                      "\n\n6. Kabukları soyulmuş sarımsakları ve nohutları ilave edin. "
                      "\n\n7. Kaynayıp soğuyan suyu kepçeyle yavaş yavaş ilave edin. En son defne yaprağını da yerleştirin. "
                      "\n\n8. Kapağı kapatmadan kalan dereotunu da ilave edin. Kapağı hafif aralık kalacak şekilde 1 saat bekletin. "
                      "\n\n9. Hava kalmaması ve iyice karışması için, kavanozun kapağını kapatın ve 2-3 saat kavanozu ters çevirerek bekletin. "
                      "\n\n10. 15-20 gün boyunca direkt güneş ışığı görmeyen serin bir yerde muhafaza edin. İşte bu kadar, afiyetler olsun! "),
            ],
          ),
        ),
      ),
    );
  }
}
