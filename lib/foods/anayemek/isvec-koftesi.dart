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

class IsvecKoftesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "İsveç Köftesi",
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
                imagePath: "images/isvec-koftesi.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "15dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Köftesi için:"),
              FoodMaterial(name: "250 gram kıyma"),
              FoodMaterial(name: "1 adet küçük soğan"),
              FoodMaterial(name: "2 yemek kaşığı galeta unu"),
              FoodMaterial(name: "1 yemek kaşığı sıvı krema"),
              FoodMaterial(name: "1 adet yumurta"),
              FoodMaterial(name: "1 tatlı kaşığı tuz"),
              FoodMaterial(name: "1 çay kaşığı karbonat"),
              FoodMenuSubtitle(subTitleName: "Sosu için:"),
              FoodMaterial(name: "1 tatlı kaşığı un"),
              FoodMaterial(name: "1 tatlı kaşığı tereyağ"),
              FoodMaterial(name: "1 su bardağı et suyu"),
              FoodMaterial(name: "2 çorba kaşığı soya sosu"),
              FoodMaterial(name: "1 çorba kaşığı sıvı krema"),
              FoodMaterial(name: "1 çay kaşığı karabiber"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Kıymanın üzerine bir adet rendelenmiş soğanı ve ayrı bir yerde çırpılmış yumurtayı ekleyelim. "
                      "\n\n2. Diğer malzemeleri de koyup güzelce yoğuralım. Köfte biraz beklesin, dinlensin. "
                      "\n\n3. Bu arada sosu hazırlayalım. Küçük bir tencerenin içinde tereyağ ve unu güzelce kavuralım. Unun rengi açık kahverengi oluncaya kadar kavrulsun orta ateşte. "
                      "\n\n4. Ardından et suyunu yavaş yavaş ekleyelim ve sürekli olarak karıştıralım. "
                      "\n\n5. Et suyunun soğuk olması önemli, topaklanmasın. "
                      "\n\n6. Tüm suyu koyduktan sonra bir taşım kaynatın ve soya sosu, karabiber ve kremayı ekleyin. Eğer sosunuzun kıvamı koyu olduysa et suyuyla açabilirsiniz. "
                      "\n\n7. Dinlenen köfteleri çok küçük olmayacak şekilde yuvarlayalım ve iki yemek kaşığı zeytinyağı koyduğunuz kızgın tavada pişirelim. "
                      "\n\n8. Servis tabağına alıp üzerine sosumuzu dökelim. Yanına patates kızartmasıyla servis yapabilirsiniz. Deneyenlere afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
