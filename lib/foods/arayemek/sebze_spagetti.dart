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

class SebzeSpagetti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sebze Spagetti",
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
                imagePath: "images/Sebze-Spagetti.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "10dk",
                cooking: "10dk",
              ),
              Materials(),
              FoodMaterial(name: "3 adet zucchini ( kabak )"),
              FoodMaterial(name: "3 adet havuç"),
              FoodMaterial(name: "2 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "300 gr yoğurt"),
              FoodMaterial(name: "1 diş rendelenmiş sarımsak"),
              FoodMenuSubtitle(subTitleName: "Üzeri için:"),
              FoodMaterial(name: "200 gr kıyma"),
              FoodMaterial(name: "1 adet soğan"),
              FoodMaterial(name: "2 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "Yarım yemek kaşığı salça"),
              FoodMaterial(name: "Tuz kara biber pul biber"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Kabak ve havuçları yıkayıp alacalı soyuyoruz ,patates soyacağı ile uzunlamasına ince ince diliyoruz. "
                      "\n\n2. Daha sonra bir tavaya alıp azıcık sıvı yağ ekleyip ayrı ayrı 2 dk soteliyoruz. "
                      "\n\n3. Soğuduktan sonra ikisini bir kaba alıp tuz ekleyip karıştırıyoruz. "
                      "\n\n4. Kıymayı bir tencereye alıyoruz, yemeklik doğradığımız soğanı ve yağ ekleyip ocakta kavuruyoruz. "
                      "\n\n5. Daha sonra salça, tuz, kara biber, pul biber ekleyip tekrar 2-3 dk kavurduktan sonra ocaktan alıyoruz. "
                      "\n\n6. Yoğurdumuzun içine sarımsak ve tuz ekleyip güzelce karıştırıyoruz. "
                      "\n\n7. Daha sonra sebzelerimizin orta kısmına yoğurdumuzu döküyoruz. "
                      "\n\n8. Üzerine kıymayı ekledikten sonra ince kıydığımız maydanozu serpip servis yapıyoruz deneyenlere afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
