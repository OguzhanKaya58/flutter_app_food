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

class KiymaliEristeCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kıymalı Erişte Çorbası",
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
                imagePath: "images/kiymali-eriste-corbasi.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "10dk",
                cooking: "15dk",
              ),
              Materials(),
              FoodMaterial(name: "Kıyma (küçük kase)"),
              FoodMaterial(name: "Kuru soğan (1 adet)"),
              FoodMaterial(name: "Salça (1 yemek kaşıği)"),
              FoodMaterial(name: "Un (yemek kaşığının yarısı)"),
              FoodMaterial(name: "Erişte (1 çay bardağı)"),
              FoodMaterial(name: "Nane (1 çay kaşığı)"),
              FoodMaterial(name: "Yağ (2 yemek kaşıği sıvı, 1 kaşık tereyağ)"),
              FoodMaterial(name: "Tuz (1 çay kaşığı)"),
              FoodMaterial(name: "Su (1, 5 litre)"),
              FoodMenuSubtitle(subTitleName: "Terbiyesi için:"),
              FoodMaterial(name: "Yoğurt (1 su bardağı)"),
              FoodMaterial(name: "Yumurta (1 adet)"),
              FoodMaterial(name: "Un (1 yemek kaşığı)"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Soğanı ince doğrayıp kıymayla çorba tenceremize koyalım. Yağları ilave edip soğanlar çiğliğini kaybedene kadar kavurduktan sonra salçayı ilave edip biraz karıştırıyor 1 kaşık unu ekliyoruz. Naneyi ve tuzunu da koyup karıştırıyoruz. "
                      "\n\n2. Şimdi suyun tamamını ilave edelim yalnız tel çırpıcıyla hızlı bir şekilde bir taraftan karıştırıyoruz, un topaklanmasın diye. Kaynayana kadarda devam edelim karıştırmaya. Kaynayan çorbamıza erişteyi ilave ediyoruz. "
                      "\n\n3. Eriştiler pişene kadar kaynatıyor piştikten sonra, terbiye malzemelerini çatalla çırpıyoruz ve çorbamıza karıştırarak içine ilave ediyoruz. 3 dakika kadar kaynadıktan sonra çorbamız soframızda yenmeye hazırdır. Sağlıklı kalın, Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
