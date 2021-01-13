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

class TerbiyeliKavrulmusSehriyeCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Terbiyeli Kavrulmuş Şehriye Çorbası",
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
              ImagePath(imagePath: "images/Terbiyeli-Kavrulmuş-Şehriye-Çorbası.JPG",),
              Preparation(
                howManyPerson: "2-4",
                preparation: "10dk",
                cooking: "25dk",
              ),
              Materials(),
              FoodMaterial(name: "1 dolu yemek kaşığı tereyağı"),
              FoodMaterial(name: "1 su bardağı tel şehriye"),
              FoodMaterial(name: "4 su bardağı su"),
              FoodMenuSubtitle(subTitleName: "Terbiyesi için:"),
              FoodMaterial(name: "2 yemek kaşığı yoğurt"),
              FoodMaterial(name: "1 yumurta sarısı"),
              FoodMaterial(name: "1 tepeleme yemek kaşığı mısır unu"),
              FoodMaterial(name: "Tuz, karabiber"),
              Fabrication(),
              Recipe(recipeName: "1. Öncelikle margarin veya tereyağını tencereye koyuyoruz eridiği zaman tel şehriyeyi ekleyip tel şehriyeler pembeleşene kadar kavuruyoruz. \n\n2. Kavurma işlemi tamamlandıktan sonra 4 su bardağı suyumuzu ekleyip(kaynamış tavuk suyuda konulabilir)  kaynamaya bırakıyoruz, kaynadıktan sonra ocağın altını kısıp 10 dakika pişiriyoruz. \n\n3. Çorbamız kaynarken terbiyesini hazırlıyoruz kase içerisine mısır unu, yoğurt ve yumurta sarısını ekleyip iyice çırpıyoruz pütürlük kalmamalı. \n\n4. Kaynayan çorba suyumuzdan 1 kepçe alıp terbiyenin içerisine ekliyoruz tekrar çırpıp tencereye döküyoruz karıştırıp damak tadınıza göre tuz ve karabiberi ekleyip kaynamaya bırakıyoruz. 10-15 dakika kaynatıp ocağın altını kapatıyoruz. \n\n5. Çorbamız hazır sıcak olarak üzerine isteğe bağlı biraz karabiber ve maydanoz koyarak servis edebilirsiniz.",),
            ],
          ),
        ),
      ),
    );
  }
}
