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

class FirindaPatates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Fırında Köz Tadında Patates",
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
                imagePath: "images/Fırında-Köz-Tadında-Patates.jpg",
              ),
              Preparation(
                howManyPerson: "10-12",
                preparation: "5dk",
                cooking: "25dk",
              ),
              Materials(),
              FoodMaterial(name: "Patates (Siz ne kadar istiyorsanız)"),
              FoodMaterial(name: "Tuz (Damak zevkine göre ayarlayın)"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Patateslerin kabuklarını soyun kurulayın halka halka orta kalınlıkta olacak şekilde dilimleyin küçük patates yerine orta boy veya büyük boy patates ile yapabilirsiniz. "
                      "\n\n2. Dilimlediğiniz patatesleri yağlı kağıt serili tepsiye dizin. "
                      "\n\n3. Patateslerin üzerine tuz serpiştirin. "
                      "\n\n4. Önceden ısıtılmış fırında 200 derece fırın üst rafına üzerleri güzelce kızarana kadar pişirin. "
                      "\n\n5. Hazırladığınız patatesleri sıcak olarak tüketiyoruz "),
            ],
          ),
        ),
      ),
    );
  }
}
