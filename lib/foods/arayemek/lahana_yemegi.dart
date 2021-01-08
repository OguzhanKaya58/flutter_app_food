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

class LahanaYemegi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lahana Yemeği",
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
                imagePath: "images/lahana-yemeği.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "10dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(name: "1 kase doğranmış lahana"),
              FoodMaterial(name: "1 soğan"),
              FoodMaterial(name: "1 kaşık salça"),
              FoodMaterial(name: "1,5 yemek kaşığı tereyağ"),
              FoodMaterial(name: "4 kaşık yeşil mercimek"),
              FoodMaterial(name: "Tuz, Pul biber"),
              FoodMaterial(name: "Su, Yarım limon suyu"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Öncelikle yeşil mercimeği ayrı bir tencerede hafif diri kalacak şekilde haşlayıp kara suyunu süzün. "
                      "\n\n2. Lahananın sert kısımlarını küçük küçük doğrayın. Bir kase olacak şekilde. "
                      "\n\n3. Sonra 1 adet soğanı yemeklik doğrayıp yağda pembeleşinceye kadar kavurun. "
                      "\n\n4. Salçayı ekleyip biraz daha kavurun. "
                      "\n\n5. Ardından lahanayı da ekleyip bir iki dakika kadar daha kavurduktan sonra üzerini geçecek kadar sıcak su ekleyip pişmeye bırakın. "
                      "\n\n6. Yemeğimiz biraz piştikten sonra hafif diri şekilde haşladığımız yeşil mercimeği, tuzunu ve pul biberini de ekleyip pişmeye bırakın. "
                      "\n\n7. Altını kapatmadan 5 dakika önce yarım limonu sıkıp biraz daha kaynatıp altını kapatabilirsiniz. Yemeğimiz hazırdır. "),
            ],
          ),
        ),
      ),
    );
  }
}
