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

class EzogelinPilavi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Ezogelin Pilavı",
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
                imagePath: "images/ezogelin-pilavi.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "15dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "5 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "1 yemek kaşığı tereyağı (tepeli)"),
              FoodMaterial(name: "1/2 (yarım) su bardağı arpa şehriye"),
              FoodMaterial(name: "1 su bardağı pirinç"),
              FoodMaterial(name: "1,5 su bardağı pilavlık bulgur"),
              FoodMaterial(name: "1 adet havuç"),
              FoodMaterial(name: "1 adet kapya biber (kırmızı biber)"),
              FoodMaterial(name: "4 adet yeşil biber"),
              FoodMaterial(name: "1 tatlı kaşığı tuz"),
              FoodMaterial(name: "2,5 su bardağı tavuk suyu"),
              FoodMaterial(name: "3 su bardağı sıcak su"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Sebzeleri yıkayıp, havucu soyup rendeliyoruz. Biberlerin çekirdeklerini çıkartıp, minik minik kesiyoruz. "
                      "\n\n2. Sıvı yağı pişireceğimiz tencereye alıp, arpa şehriyesini yağa dökerek ocağa alıyoruz. "
                      "\n\n3. Hafifçe pembeleşen (çok değil, sebzeler kavrulurken de pembeleşecek) şehriyelerin üzerine, sebzeleri dökerek kavurmaya devam ediyoruz. "
                      "\n\n4. Sebzeler birazcık ölünce (karıştırırken anlaşılır zaten, sebzelerin ilk diriliği gidiyor, tamamen de pişmemiş oluyor) tereyağını katıp, yağ eriyince de yıkadığımız pirinç ve bulguru sebzelerin üzerine dökerek, 1-2 dakika da bütün bu karışımı karıştırarak kavuruyoruz. "
                      "\n\n5. Tuzunu da ayarladıktan sonra, üzerine kaynar olan tavuk suyunu ve normal suyu da döküp, karıştırıyoruz. "
                      "\n\n6. Tencerenin kapağını kapatarak; pirinçler göz göz olana kadar yüksek ateşte, sonra orta ateşte pişmeye bırakalım. "
                      "\n\n7. Pilavımız tamamen suyunu çektikten sonra, ocağı kapatalım. "
                      "\n\n8. Üzerine kağıt havlu koyup, biraz da dinlenince servise hazır. "),
            ],
          ),
        ),
      ),
    );
  }
}
