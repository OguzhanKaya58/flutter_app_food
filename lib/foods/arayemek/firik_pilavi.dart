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

class FirikPilavi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Firik Pilavı",
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
                imagePath: "images/firik-pilavi.png",
              ),
              Preparation(
                howManyPerson: "8-10",
                preparation: "5dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "1,5 su bardağı firik"),
              FoodMaterial(name: "1 su bardağı pilavlık bulgur"),
              FoodMaterial(name: "Yarım su bardağı yeşil mercimek"),
              FoodMaterial(name: "1 yemek kaşığı biber salçası"),
              FoodMaterial(name: "1 adet soğan"),
              FoodMaterial(name: "Yarım çay bardağı kadar sıvı yağ"),
              FoodMaterial(name: "1 yemek kaşığı dolusu tereyağı"),
              FoodMaterial(name: "5-5,5 su bardağı tavuk suyu"),
              FoodMaterial(name: "Karabiber, Pulbiber, Tuz"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Yeşil mercimeği vaktiniz varsa, ılık suda 3-4 saat bekletin. Vaktiniz çok yok ise, tencerede hafif yumuşayana kadar pişirin. "
                      "\n\n2. Soğanları yemeklik doğrayın ve sıvı yağ ile pilav tenceresinde kavurun. "
                      "\n\n3. Üzerine firik ve bulguru koyarak kavurun. "
                      "\n\n4. Yeşil mercimeği de ekleyerek, 3-4 dk daha kavurun. "
                      "\n\n5. Üzerine salçayı ekleyin, kavurup baharatları ekleyin. (Ben 1 çay kaşığı karabiber, 1 çay kaşığı da pul biber kullandım). "
                      "\n\n6. Tuzu ve sıcak tavuk suyunu ilave edin. "
                      "\n\n7. Kapağını kapatarak, orta ateşte pişmeye bırakın. "
                      "\n\n8. Suyunu biraz çektikten sonra, kısık ateşte pişmeye bırakın. "
                      "\n\n9. Suyunu tamamen çekip pişen pilavın altını kapatın, tereyağını ekleyerek karıştırın ve kapağın altına havlu kağıt koyarak demlenmeye bırakın. "
                      "\n\n10. 15-20 dk demlenen pilavı, servis edebilirsiniz. "),
            ],
          ),
        ),
      ),
    );
  }
}
