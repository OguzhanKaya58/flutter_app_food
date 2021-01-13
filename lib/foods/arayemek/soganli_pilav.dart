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

class SoganliPilav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Soğanlı Pilav",
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
              ImagePath(imagePath: "images/soganli-pilav.jpg",),
              Preparation(
                howManyPerson: "6-8",
                preparation: "25dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "2 su bardağı pirinç"),
              FoodMaterial(name: "2 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "2 yemek kaşığı tereyağ"),
              FoodMaterial(name: "1 tane knor tavuk suyu tableti"),
              FoodMaterial(name: "1 tane orta boy soğan"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "3 su bardağı sıcak su"),
              Fabrication(),
              Recipe(recipeName: "1. İlk önce pirinçimizi sıcak suda tuz atarak 15-20 dk bekletiyoruz. \n\n2. Ardından soğan yemeklik doğranır .Pilav tenceresine alınır. \n\n3. Sıvı yağ koyup bir iki defa çevir. Sakın kavurma yıkanan pirinçi ekle tableti ekle kaşıkla ezdir. \n\n4. Tuz koy ve pirinci o şekilde bir 6-7 dk kavur, ardından 3 su bardağı sıcak suyu tereyağını koy kaynadıktan sonra altını kıs suyunu çekince kapatın demlenmeye bırakın. \n\n5. İsterseniz soğan kattığınızda bir tane de havuç rendeleyebilirsiniz .Asıl tarif öyle ama Ben pişmiş havuç sevmediğim için katmadım.",),
            ],
          ),
        ),
      ),
    );
  }
}
