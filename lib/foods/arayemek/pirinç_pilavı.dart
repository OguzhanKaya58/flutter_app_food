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

class PirincPilavi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pirinç Pilavı",
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
                imagePath: "images/pirinc-pilavi.jpg",
              ),
              Preparation(
                howManyPerson: "4-6",
                preparation: "20dk",
                cooking: "20dk",
              ),
              Materials(),
              FoodMaterial(name: "2 su bardağı pirinç"),
              FoodMaterial(name: "2,5 su bardağı sıcak su"),
              FoodMaterial(name: "3 yemek kaşığı tereyağı"),
              FoodMaterial(name: "1 yemek kaşığı sıvı yağ"),
              FoodMaterial(name: "Tuz"),
              FoodMenuSubtitle(subTitleName: "Pirinçleri ıslatmak için:"),
              FoodMaterial(name: "Pirinçlerin üzerini geçecek kadar ılık su"),
              FoodMaterial(name: "Tuz"),
              Fabrication(),
              Recipe(
                  recipeName:
                  "1. Pirinci bol su ile yıkayın. Uygun bir kaba alarak üzerini geçecek kadar ılık su ekleyin. Birazda tuz ilave edip karıştırın ve 15-20 dakika bekletin. Daha sonra yıkayarak suyunu süzün. Nişastası gidene kadar yıkıyoruz. Çıkan suyun berrak olması gerekiyor. "
                      "\n\n2. Tencerede tereyağını eritip suyu süzülmüş pirinci ekleyin ve 4-5 dakika kadar kavurun. Pirinçlerin yeteri kadar kavrulduğunu pirinler tane tane dökülmeye başladığında anlayabilirsiniz. "
                      "\n\n3. Pirinçler kavrulduktan sonra sıcak su veya sıcak et suyunu ekleyelim. İsterseniz yarım tavuk suyu yarım sıcak su kullanabilirsiniz. Tavuk suyunuz yağlı ise bu şekilde su ile karıştırmanızı tavsiye ederim ancak yağlı değilse tamamı tavuk suyu ile çok daha lezzetli olacaktır. "
                      "\n\n4. Son olarak tuzu ekleyin. "
                      "\n\n5. Pilavımızı kapağı kapalı bir şekilde önce yüksek ateşte pişmeye bırakalım. "
                      "\n\n6. Üzeri göz göz olduğunda yani üzerindeki suyu çekip pilavın üzerinde nokta nokta delikler oluştuğunda kısık ateşe alalım.  Pirinçler yumuşayıp suyu tamamen çekene kadar pişirelim. "
                      "\n\n7. Pişen pilavımızı ocaktan aldıktan sonra üzerine havlu peçete sererek kapağını tekrar kapatalım. "
                      "\n\n8. Pilavı 10-15 dk dinlendirelim. Daha sonra tahta kaşık ile karıştırarak servis yapabilirsiniz. "),
            ],
          ),
        ),
      ),
    );
  }
}
