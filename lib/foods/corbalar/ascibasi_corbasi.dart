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

class AscibasiCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Aşçıbaşı Çorbası",
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
                imagePath: "images/arabasi-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "25dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "1 adet haşlanmış tavuk budu"),
              FoodMaterial(name: "Yarım su bardağı kırmızı mercimek"),
              FoodMaterial(name: "Yarım çay bardağı tel şehriye"),
              FoodMaterial(name: "1 adet soğan"),
              FoodMaterial(name: "1 adet domates"),
              FoodMaterial(name: "1 yemek kaşığı tereyağ"),
              FoodMaterial(name: "2 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "1 yemek kaşığı un"),
              FoodMaterial(name: "1 tatlı kaşığı domates salçası"),
              FoodMaterial(name: "6 su bardağı tavuk suyu"),
              FoodMaterial(name: "2 çay kaşığı kuru nane"),
              FoodMaterial(
                  name: "1 çay kaşığı ucuyla tatlı kırmızı toz biber"),
              FoodMaterial(name: "1 çay kaşığı ucuyla  pul biber"),
              FoodMaterial(name: "1 çay kaşığı ucuyla  karabiber"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "Üzeri için ince kıyılmış maydanoz"),
              Fabrication(),
              Recipe(
                  recipeName: "1. Tavuk budu haşlanır ve tiftiklenir. "
                      "\n\n2. Uygun bir tencereye yağlar eritilir yemeklik doğranmış soğan 2 dk kavurulur. "
                      "\n\n3. Daha sonra un eklenir ve kokusu çıkana dek kavrulmaya devam edilir. "
                      "\n\n4. Salça eklenir az daha kavrulur. Yıkanmış suyu süzülmüş mercimek de eklendikten sonra biraz daha kavrulur ve üzerine tavuk suyu dökülür. "
                      "\n\n5. Bi şekilde mercimek yumuşayana kadar kaynamaya bırakılır. "
                      "\n\n6. Yumuşayan mercimekler blenderden pürüzsüz olana dek çekilir. "
                      "\n\n7. Daha sonra tel şehriye, didilmiş tavuk ve küçük küçük doğranmış domates eklenir. "
                      "\n\n8. Şehriye ve domates yumuşayana kadar pişirilmeye devam edilir. "
                      "\n\n9. Eğer kıvamı koyu geldiyse sıcak su ilavesi yapılabilir. "
                      "\n\n10. Son olarak damak tadınıza göre tuz ve baharatları ekleyip 2 taşım kaynatıp ocaktan alın. "
                      "\n\n11. Servis ederken üzerine ince kıyılmış maydanoz serpin. Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
