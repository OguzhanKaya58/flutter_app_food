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

class TerbiyeliIspanakCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Terbiyeli Ispanak Çorbası",
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
                imagePath: "images/Terbiyeli-Ispanak-Çorbası.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "10dk",
                cooking: "35dk",
              ),
              Materials(),
              FoodMaterial(name: "500 gr. ıspanak"),
              FoodMaterial(name: "1 adet büyük havuç"),
              FoodMaterial(name: "1 çay bardağı arpa şehriye"),
              FoodMaterial(name: "1 tablet tavuk suyu"),
              FoodMaterial(name: "1 diş sarımsak"),
              FoodMenuSubtitle(subTitleName: "Terbiyesi için:"),
              FoodMaterial(name: "3 yemek kaşığı yoğurt"),
              FoodMaterial(name: "1,5 yemek kaşığı un"),
              FoodMaterial(name: "1 yumurta"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Öncelikle ıspanağı güzelce yıkayıp çok küçük olmayacak şekilde doğruyoruz. Havuçları da mini küpler halinde doğruyoruz."
                      "\n\n2. Tencerenin hemen hemen yarısına kadar su doldurup havuçları atıyoruz. Havuçlar çok az pişince ıspanakları da ekliyoruz. "
                      "\n\n3. Beraberce 15 dakika kadar kaynayınca malzemelerini çırptığımız terbiyesini yavaş yavaş ekleyip bir yandan karıştırıyoruz. "
                      "\n\n4. Tavuk suyunu da ekleyip kaynayana kadar karıştırıyoruz. "
                      "\n\n5. Kaynamaya başladıktan 5 dakika sonra Şehriyesini ekleyip yine yaklaşık 10 15 dakika pişiriyoruz. Arada karıştırmayı unutmayın. "
                      "\n\n6. Vitamin deposu Çorbamız servise hazır "),
            ],
          ),
        ),
      ),
    );
  }
}
