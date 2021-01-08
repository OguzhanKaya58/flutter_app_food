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

class KarisikTursu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Karışık Turşu",
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
                imagePath: "images/tursu.jpg",
              ),
              Preparation(
                howManyPerson: "1 büyük kavanoz",
                preparation: "1 saat",
                cooking: "0dk",
              ),
              Materials(),
              FoodMaterial(name: "1 adet rta boy beyaz lahana"),
              FoodMaterial(name: "1/2 adet orta boy karnabahar"),
              FoodMaterial(name: "10 adet orta boy yeşil domates"),
              FoodMaterial(name: "500 gram arpacık soğan"),
              FoodMaterial(name: "20 adet sarımsak"),
              FoodMaterial(name: "10 adet küçük boy salatalık"),
              FoodMaterial(name: "4 adet orta boy kırmızı biber"),
              FoodMaterial(name: "4 adet orta boy havuç"),
              FoodMenuSubtitle(subTitleName: "Salamura karışımı için:"),
              FoodMaterial(name: "1,5 su bardağı üzüm sirkesi"),
              FoodMaterial(name: "6 yemek kaşığı kaya tuzu"),
              FoodMaterial(name: "1 yemek kaşığı toz şeker"),
              FoodMaterial(name: "1 tatlı kaşığı limon tuzu"),
              FoodMaterial(name: "20 adet kuru nohut"),
              FoodMaterial(name: "1 tatlı kaşığı kişniş tohumu"),
              FoodMaterial(name: "1 adet defne yaprağı"),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Turşu yapımında kullanacağınız arpacık soğan ve sarımsakların kabuklarını soyup bütün olarak muhafaza edin. Kabuklarını kazıdığınız ya da bütün olarak soyduğunuz havuçları iri parçalar halinde doğrayın. "
                      "\n\n2. Karnabaharı küçük çiçeklerine ayırın. Kök kısmını aldığınız beyaz lahanayı dört eşit parçaya bölüp ince ince doğrayın. Yeşil domatesleri diğer sebzelerle uyumlu olacak büyüklükte doğrayın. "
                      "\n\n3. Uç kısımlarını aldığınız küçük boy salatalıkları halka halka dilimleyin. Dilimlerin ince olmamasına dikkat edin. Ortadan ikiye kesip çekirdeklerini çıkardığınız etli kırmızı biberleri iri parçalar halinde kesin. "
                      "\n\n4. Turşu kuracağınız cam kavanozu bol suda yıkayın. Sıcak suda kaynatıp fazla suyunu süzdükten sonra kurulayın. Kavanozun taban kısmına turşuya ekşiliğini verecek kuru nohut ve sarımsakları yerleştirin. "
                      "\n\n5. Doğramış olduğunuz sebzeleri sırasıyla yerleştirmeye başlayın. Ara katlara sarımsak ve arpacık soğanları serpiştirin. Tüm sebzeleri sıkı sıkıya doldurup üzüm sirkesini ekleyin. "
                      "\n\n6. Salamura karışımına ekleyeceğiniz suyun ölçüsünü tam olarak belirlemek için sebzelerin üzerine gelecek kadar içme suyu ekleyip karışımı ayrı bir tencereye boşaltın. "
                      "\n\n7. Kaya tuzu, limon tuzu, toz şeker, kişniş tohumu ve defne yaprağıyla karıştırdığınız salamura karışımını yeniden turşu kavanozuna doldurun. "
                      "\n\n8. Suyun etkisiyle altta kalan sebzelerin yüzeye çıkmaması için üst kısmını asma yaprağı, dereotu, maydanoz gibi taze otlarla örtün. Havayla temasını kesmek için pamuklu bir bezle üzerini örttüğünüz karışık turşunun kapağını sıkıca kapatın. "
                      "\n\n9. Oda ısısında, güneş görmeyen bir yerde 15-20 gün kadar muhafaza edip sebzeler olgunlaştıktan sonra tüketmeye başlayın. Arzu ettiğiniz yemeklerin yanında sevdiklerinizle paylaşın. "),
            ],
          ),
        ),
      ),
    );
  }
}
