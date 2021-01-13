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

class FirinPosetindeButunTavuk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Fırın Poşetinde Bütün Tavuk",
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
                imagePath: "images/firin-posetinde-butun-tavuk.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "15dk",
                cooking: "1saat 15dk",
              ),
              Materials(),
              FoodMaterial(name: "Orta boy bütün tavuk (yaklaşık 2 kg)"),
              FoodMenuSubtitle(subTitleName: "Sosu için:"),
              FoodMaterial(name: "1 yemek kaşığı domates salçası"),
              FoodMaterial(name: "1 yemek kaşığı yoğurt"),
              FoodMaterial(name: "1 yemek kaşığı zeytinyağı"),
              FoodMaterial(name: "1 tatlı kaşığı tuz"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Tavuğun sosu için uygun bir kaba  domates salçası,  yoğurt, zeytinyağı sıvı yağ ve tuzu alalım. Güzelce karıştıralım. "
                      "\n\n2. Orta boy bütün tavuğumuzu alalım, bir havlu kağıt yardımı ile üzerini kurulayalım. "
                      "\n\n3. Hazırladığımız sosumuzu bir fırça yardımıyla tavuğun her yerine gelecek şekilde sürelim. "
                      "\n\n4. Güzelce sosladığımız tavuğun butlarını bir ip yardımıyla bağlayalım. Tavuğun kanat kısımlarına da bir kürdan veya çöp şiş batırarak sabitleyelim. "
                      "\n\n5. Fırın torbamızı alalım, ağzını açıp sosladığımız tavuğu içine yerleştirelim. Paketten çıkan tel ile fırın torbasının ağzını sıkıca kapatalım. "
                      "\n\n6. Fırın torbasının üzerinde kürdanla birkaç delik açalım. "
                      "\n\n7. Tavuğumuzu fırın tepsisine alalım ve önceden ısıtılmış 200 derece fırında yaklaşık 1 saat 10 dakika kadar pişmeye bırakalım. Pişme süresini ayarlarken tavuğu boyutunu göz önünde bulundurmalısınız. "
                      "\n\n8. Pişen tavuğumuzu fırından çıkartarak poşetini açalım ve kızarması için bir kaç dakika daha fırına verelim. "
                      "\n\n9. Üzeri kızaran tavuğumuzu fırından çıkartalım. İlk sıcağı çıktıktan sonra tavuğumuz servise hazır. Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
