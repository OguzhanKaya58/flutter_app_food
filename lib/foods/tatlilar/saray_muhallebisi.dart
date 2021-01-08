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

class SarayMuhallebisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Saray Muhallebisi",
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
                imagePath: "images/saray-muhallebisi.jpg",
              ),
              Preparation(
                howManyPerson: "12 dilim",
                preparation: "5dk",
                cooking: "35dk",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Muhallebisi için:"),
              FoodMaterial(name: "100 gram margarin"),
              FoodMaterial(name: "1 litre süt"),
              FoodMaterial(name: "4 yemek kaşığı tepeleme un"),
              FoodMaterial(name: "1 su bardağı toz şeker"),
              FoodMaterial(name: "1 paket vanilya (5 gram)"),
              FoodMaterial(name: "1 adet yumurta sarısı"),
              FoodMenuSubtitle(subTitleName: "Üzeri için:"),
              FoodMaterial(name: "1 su bardağı iri kıyılmış ceviz içi"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Saray muhallebisi yapmak için, ilk önce yumurta sarısı ile toz şeker tencereye konulup karıştırılır. "
                      "\n\n2. Üzerine 1 litre süt ilave edilip ocağın üzerine alınır ve kısık ateşte sürekli karıştırarak şekerin erimesi sağlanır. "
                      "\n\n3. Şeker tamamen eriyince tencere ocaktan alınır (süt çok ısınmamalı). "
                      "\n\n4. Başka bir tencere içerisine 100 gram margarin konulup eritilir. "
                      "\n\n5. Eritilen margarinin üzerine un ilave edilir ve unun kokusu çıkana kadar karıştırarak kavrulur. "
                      "\n\n6. Unun kokusu çıkınca üzerine süt ilave edilir ve hızlı bir şekilde karıştırılır. "
                      "\n\n7. Elde edilen karışım muhallebi kıvamına gelinceye kadar sürekli karıştırarak pişirilir. "
                      "\n\n8. Muhallebi kıvamına gelince ocaktan alınır ve üzerine vanilya ilave edilerek 5-10 dakika kadar sürekli karıştırarak soğutulur. "
                      "\n\n9. Daha sonra ıslatılmış küçük dikdörtgen borcam tepsi içerisine dökülür (tepsiyi mutlaka ıslatın). "
                      "\n\n10. Üzerine 1 su bardağı iri kıyılmış ceviz içi serpiştirilir ve hazırlanan saray muhallebisi buzdolabına kaldırılarak soğumaya bırakılır. "
                      "\n\n11. Saray muhallebisi tatlısı iyice soğuyup kıvam aldıktan sonra dilimlenerek servis edilir. "),
            ],
          ),
        ),
      ),
    );
  }
}
