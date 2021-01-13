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

class SoganliTavukluPilav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Tavuklu Soğanlı Pilav",
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
                imagePath: "images/soganli-tavuklu-pilav.jpg",
              ),
              Preparation(
                howManyPerson: "1-2",
                preparation: "10dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "1 su bardağı pirinç"),
              FoodMaterial(name: "400 gram tavuk bonfile"),
              FoodMaterial(name: "1 büyük soğan"),
              FoodMaterial(name: "Zeytinyağı"),
              FoodMaterial(name: "Karabiber, Tuz"),
              FoodMaterial(name: "Sıcak su"),
              Fabrication(),
              Recipe(
                  recipeName: "1. Pirinci ılık suda bekletin ve yıkayıp süzün. "
                      "\n\n2. Tencereyi yüksek ateşe koyun ve üzerine biraz yağ dökün. "
                      "\n\n3. Yağ kızınca küp doğranmış tavukları tencereye atın ve 5 dk hiç dokunmadan bekleyin. Tavuğun altı kızaracaktır. "
                      "\n\n4. Daha sonra tavukları çevirmeye başlayın ve tuzunu atın. "
                      "\n\n5. Daha sonra yemeklik doğranmış soğanları ilave edip kavurun ve son olarak pirinçleri de atıp karıştırıp biraz kavurup suyunu ve karabiberi ilave edin. "
                      "\n\n6. Kapağını kapatıp kaynamaya başlayınca ocağın en küçük gözünde kısık ateşte pişirin. "
                      "\n\n7. Ara ara pilavı karıştırın pirinçler pişene kadar su ilavesi yapabilirsiniz. "),
            ],
          ),
        ),
      ),
    );
  }
}
