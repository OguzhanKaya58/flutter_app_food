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

class PatatesMusakka extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Patates Musakka",
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
                imagePath: "images/Patates-Musakka.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "20dk",
                cooking: "50dk",
              ),
              Materials(),
              FoodMaterial(name: "Yarım çay bardağı sıvı yağ"),
              FoodMaterial(name: "300gr kıyma"),
              FoodMaterial(name: "1 adet soğan"),
              FoodMaterial(name: "4 adet orta boy patates"),
              FoodMaterial(name: "1 yemek kaşığı salça"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "Karabiber, pulbiber, kekik"),
              FoodMaterial(name: "Yarım su bardağı su"),
              FoodMaterial(name: "Süt"),
              FoodMenuSubtitle(subTitleName: "Sosu için:"),
              FoodMaterial(name: "6 yemek kaşığı yoğurt"),
              FoodMaterial(name: "1 yumurta sarısı"),
              FoodMaterial(name: "1 yemek kaşığı un"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Uygun bir tencereye sıvı yağı ve kıymayı alarak kavuruyoruz. "
                      "\n\n2. Soğanımızı yemeklik doğrayalım ve kıymanın üzerine ilave ederek kavurmaya devam edelim. "
                      "\n\n3. Daha sonra doğradığımız patatesleri ve salçayı da ekleyelim, karıştırarak pişirelim. "
                      "\n\n4. Yemeğimizin baharatlarını da ayarlayalım, suyunu ekleyip karıştıralım ve yemeğimizi fırın kabına alalım. "
                      "\n\n5. Üzerine gelecek kadar süt ilave edelim ve yemeğimizi önceden ısıttığımız 180°C fırında 30-35 dakika kadar pişmeye bırakalım. "
                      "\n\n6. Sosu için uygun bir kaseye yoğurdu, yumurta sarısını ve unu ekleyelim, güzelce çırpalım. "
                      "\n\n7. Fırından aldığımız yemeğimizin üzerine sosumuzu boşaltalım ve üzeri kızarıncaya kadar tekrar fırına verelim. "
                      "\n\n8. Patates musakkamız servise hazır. Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
