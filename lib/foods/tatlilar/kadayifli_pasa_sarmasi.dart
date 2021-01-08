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

class KadayifliPasaSarmasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kadayıflı Paşa Sarması",
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
                imagePath: "images/kadayifli-pasa-sarma.jpg",
              ),
              Preparation(
                howManyPerson: "8-10",
                preparation: "10dk",
                cooking: "40dk",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Tabanı için:"),
              FoodMaterial(name: "300 gr tel kadayıf"),
              FoodMaterial(name: "2 yemek kaşığı tereyağı"),
              FoodMaterial(name: "1 su bardağı çekilmiş ceviz içi"),
              FoodMaterial(name: "1 tatlı kaşığı tarçın"),
              FoodMenuSubtitle(subTitleName: "Kreması için:"),
              FoodMaterial(name: "1 litre süt"),
              FoodMaterial(name: "1 yumurta sarısı"),
              FoodMaterial(name: "1 çay bardağı şeker"),
              FoodMaterial(name: "3 yemek kaşığı un"),
              FoodMaterial(name: "3 yemek kaşığı nişasta"),
              FoodMaterial(name: "1 yemek kaşığı tereyağı"),
              FoodMaterial(name: "2 paket vanilya"),
              FoodMenuSubtitle(subTitleName: "Arasına:"),
              FoodMaterial(name: "Muz"),
              FoodMenuSubtitle(subTitleName: "Üzerine:"),
              FoodMaterial(name: "Çikolata sos"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Öncelikle kadayıflarımızı bıçakla ince ince kıyıyoruz iyice ufaltıyoruz. "
                      "\n\n2. Tavamıza tereyağını alıyoruz kadayıflarımızı koyup iyice kızarana kadar kavuruyoruz. "
                      "\n\n3. Ocaktan almaya yakın cevizleri ekleyip kavuruyoruz ocağı kapatıp tarçını ekliyoruz ve normal fırın tepsisine tabanı yayıyoruz. "
                      "\n\n4. Krema için:Bir tencereye süt, yumurta sarısı, şeker, un, nişasta alınır iyice karıştırdıktan sonra ocağa alınır ve pişirilir. "
                      "\n\n5. Pişen kremamızı ocaktan aldıktan sonra tereyağını ve vanilyasını ilave edip karıştırıyoruz ve muhallebimizi kadayıflarımızın üzerine yavaşça döküyoruz. "
                      "\n\n6. Tatlımızı en az 2 saat buzdolabında beklettikten sonra çıkarıp dilimliyoruz her dilimin üzerine muz ekleyip yavaşça dilimimizi rulo yapıyoruz. "
                      "\n\n7. Üzerine çikolata sos döküp servis yapıyoruz. "),
            ],
          ),
        ),
      ),
    );
  }
}
