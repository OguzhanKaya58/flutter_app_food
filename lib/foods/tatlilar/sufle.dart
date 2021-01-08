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

class Sufle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sufle",
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
                imagePath: "images/sufle.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "15dk",
                cooking: "10dk",
              ),
              Materials(),
              FoodMaterial(name: "3 tane yumurta"),
              FoodMaterial(name: "80g bitter çikolata"),
              FoodMaterial(name: "Yarım su bardağı un"),
              FoodMaterial(name: "50 g tereyağı"),
              FoodMaterial(name: "Yarım su bardağı şeker"),
              FoodMaterial(name: "1 çimdik tuz"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Çikolatalı sufle yapmaya başlamadan önce İlk olarak fırını 220 derecede çalıştırın. "
                      "\n\n2. Tereyağı ve bitter çikolataları teflon tavada kısık ateşte karıştırarak eritin. Eridikten sonra ocağı kapatarak unu ilave edin ve iyice karıştırın. "
                      "\n\n3. Ayrı bir kapta yumurta ve şekeri karışım beyazlayana kadar çırpın. Şeker tadının ön plana çıkması için tuzu ekleyip çırpın. "
                      "\n\n4. Çikolatalı harcı ilave ederek mikserle tekrar çırpın. Hamurumuz hazır. "
                      "\n\n5. Sufle kaplarınızı ya da ısıya dayanıklı küçük kaplarınız varsa içlerini yağlayarak hamurdan eşit şekilde hepsine paylaştırın. Yaklaşık 4 kap çıkıyor. "
                      "\n\n6. Daha önceden fansız çalıştırdığınız ve ısıttığınız  fırında 7-8 dk da sufleniz hazır. Fırından aldıktan sonra bir kaç dakika ilk sıcaklığının geçmesini bekleyin sonra ister tabağa çevirip ister kaseden yiyebilirsiniz. "
                      "\n\n7. Kabınızı yağlamışsanız yapışmayacaktır. Folyodan sufle kapları var onları dakullanabilirsiniz, onlarda da suflenin çok rahat çıktığını göreceksiniz. "),
            ],
          ),
        ),
      ),
    );
  }
}
