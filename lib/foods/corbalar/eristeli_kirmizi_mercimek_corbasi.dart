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

class EristeliKirmiziMercimekCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Erişteli Kırmızı Mercimek Çorbası",
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
              ImagePath(imagePath: "images/eristeli-kirmizi-mercimek.jpg",),
              Preparation(
                howManyPerson: "2-4",
                preparation: "15dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMaterial(name: "1 su bardağı kırmızı mercimeki"),
              FoodMaterial(name: "3 çorba kaşığı sıvı yağ"),
              FoodMaterial(name: "2 çorba kaşığı un"),
              FoodMaterial(name: "1 tatlı kaşığı domates salçası"),
              FoodMaterial(name: "2 diş sarımsak"),
              FoodMaterial(name: "Yarım su bardağı erişte"),
              FoodMaterial(name: "2 litre sıcak su"),
              FoodMaterial(name: "Tuz"),
              FoodMaterial(name: "Nane (isteğe bağlı)"),
              FoodMaterial(name: "Tereyağı (isteğe bağlı)"),
              Fabrication(),
              Recipe(recipeName: "1. Sıvı yağımızı tencerede ısıtıp üzerine unu ekleyip kavuruyoruz. \n\n2. Salçasını ekleyip kavurmaya devam ediyoruz. Kırmızı mercimeği ve suyunu ekliyoruz. Tuz ve kırmızı toz biberi ekliyoruz. \n\n3. Erişteyi de katıp bir süre dibine yapışmaması için karıştırıyoruz. İki diş sarımsağımızı da ekliyoruz. Tencereyi yarı aralık bırakarak pişiriyoruz. \n\n4. İsterseniz bu aşamada servis edebilirsiniz veya tereyağını eritip nane ekleyerek çorbanızı daha da zengin bir hale getirebilirsiniz. \n\n5. Güzel bir çorba oluyor. Tavsiye ederim. İftar sofranıza değişik bir alternatif olabilir.",),
            ],
          ),
        ),
      ),
    );
  }
}
