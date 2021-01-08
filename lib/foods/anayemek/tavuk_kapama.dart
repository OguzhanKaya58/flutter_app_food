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

class TavukKapama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tavuk Kapama",
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
                imagePath: "images/tavuk-kapama.jpg",
              ),
              Preparation(
                howManyPerson: "2-4",
                preparation: "20dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(
                  name:
                      "Tavuk (tavuğun istediginiz kısmını \nistediğiniz miktarda kullanabilirsiniz)"),
              FoodMaterial(name: "1 Adet havuç"),
              FoodMaterial(name: "1 Adet soğan"),
              FoodMaterial(name: "3 Su bardağı pirinç"),
              FoodMaterial(name: "6 Su bardağı tavuk suyu"),
              FoodMaterial(name: "Karabiber, Kuru nane, Kekik, Tuz"),
              FoodMaterial(name: "Yağ"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. İlk olarak tavuk, soğan ve havucu düdüklü tencerede haşlıyoruz. "
                      "\n\n2. Sonrasında tencereye biraz katı yağ birazda sıvı yağ alıp pirinçleri ilave ediyoruz ve bir miktar kavuruyoruz, baharatları da katıp karıştırıyoruz. "
                      "\n\n3. Fırın tepsisine pirinçleri ekliyoruz tepsinin her yerine yayıyoruz. "
                      "\n\n4. Haşladığımız tavukları pirinçlerin üzerine diziyoruz. "
                      "\n\n5. Tavuğun suyundan ilave ediyoruz. "
                      "\n\n6. 180 derecelik fırında ortalama 20 dakika ile 30 dakika arasında pişiriyoruz. "
                      "\n\n7. Tavuk kapama hazır afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
