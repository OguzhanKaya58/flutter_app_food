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

class HasanpasaKoftesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hasanpaşa Köftesi",
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
                imagePath: "images/Hasanpaşa-Köftesi.jpg",
              ),
              Preparation(
                howManyPerson: "",
                preparation: "",
                cooking: "",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Ķöftesi için:"),
              FoodMaterial(name: "1/2 (yarım) kg kıyma"),
              FoodMaterial(name: "1 su bardağı öğütülmüş bayat ekmek içi"),
              FoodMaterial(name: "1 büyük kuru soğan"),
              FoodMaterial(name: "1 yumurta"),
              FoodMaterial(name: "1 çay kaşığı karbonat"),
              FoodMaterial(name: "Maydanoz"),
              FoodMaterial(name: "Karabiber, Pul biber, Kimyon, Tuz"),
              FoodMenuSubtitle(subTitleName: "Püresi için:"),
              FoodMaterial(name: "3 tane patates"),
              FoodMaterial(name: "1 çay bardağı süt"),
              FoodMaterial(name: "100 gr kaşar peyniri"),
              FoodMaterial(name: "Karabiber, Pul bibir, Tuz"),
              FoodMenuSubtitle(subTitleName: "Üzeri için:"),
              FoodMaterial(name: "Kiraz domates (arzuya göre)"),
              FoodMenuSubtitle(subTitleName: "Dip sosu için:"),
              FoodMaterial(name: "3 adet domates"),
              FoodMaterial(name: "Sıvı yağ"),
              FoodMaterial(name: "Tuz"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. İlk olarak patatesleri soyup dörde bölelim, yumuşayana kadar kaynatıp süzelim. "
                      "\n\n2. Süt, tuz ve baharatlarını ilave ederek püre haline getirelim. "
                      "\n\n3. Kaşarı da ilave ettikten sonra köftemizi hazırlamaya geçelim. "
                      "\n\n4. Kıymayı bir kaba alıp rendelenmiş soğan ve diğer köfte malzemelerini de ilave ederek yoğuralım. "
                      "\n\n5. Bir süre dinlendirdikten sonra, dilediğimiz büyüklükte bezeler alıp ortası hafif çukur olacak şekilde yassılaştıralım. "
                      "\n\n6. Yağlı bir tepsiye dizip fırına verelim. Köfteler yarı kızardıktan sonra fırından çıkarıp patates püresini üzerlerine yayalım (ben sıkma torbası kullandım) "
                      "\n\n7. Üzerine domatesleri de yerleştirip tekrar fırına verelim. "
                      "\n\n8. Dip sosu için domatesleri soyup yemeklik doğrayalım. Biraz sıvı yağda kavurup köfteleri servis ederken kullanalım. "),
            ],
          ),
        ),
      ),
    );
  }
}
