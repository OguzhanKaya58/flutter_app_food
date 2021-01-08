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

class CikolataliMoussePasta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Çikolatalı Mousse Pasta",
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
                imagePath: "images/Çikolatalı-Mousse-Pasta.jpg",
              ),
              Preparation(
                howManyPerson: "6-8",
                preparation: "5dk",
                cooking: "30dk",
              ),
              Materials(),
              FoodMenuSubtitle(subTitleName: "Keki için:"),
              FoodMaterial(name: "4 adet orta boy yumurta"),
              FoodMaterial(name: "1, 5 su bardağı toz şeker"),
              FoodMaterial(name: "1 su bardağı ılık süt"),
              FoodMaterial(name: "Yarım su bardağı sıvı yağ"),
              FoodMaterial(name: "50 gram kakao(1 küçük paket)"),
              FoodMaterial(name: "1 paket vanilya"),
              FoodMaterial(name: "1 paket kabartma tozu"),
              FoodMaterial(name: "2 su bardağından 2 yemek kaşığı eksik un"),
              FoodMenuSubtitle(subTitleName: "Mousse kreması İçin:"),
              FoodMaterial(name: "180 gram bitter çikolata"),
              FoodMaterial(name: "1 su bardağının 4 te 1 i kadar süt"),
              FoodMaterial(name: "55 gram tereyağ"),
              FoodMaterial(name: "1 yumurta sarısı"),
              FoodMaterial(name: "250 ml soğuk krema"),
              FoodMenuSubtitle(subTitleName: "Keki ıslatmak için:"),
              FoodMaterial(name: "Yarım su bardağı süt"),
              FoodMenuSubtitle(subTitleName: "Süslemek için:"),
              FoodMaterial(name: "Benmaride eritilmiş bitter çikolata,"),
              FoodMaterial(name: "Damla çikolata, toz fındık fıstık vs."),
              Fabrication(),
              Recipe(
                  recipeName:
                      "1. Yumurta ve şekeri 5 dakika mixer ile çırpalım. "
                      "\n\n2. Sırasıyla diğer malzemeleri ekleyip tel çırpıcı ile çırpmaya devam edelim. "
                      "\n\n3. Dibi tereyağı ile yağlanmış küçük dikdörtgen borcam, orta boy kare borcam(en küçük değil!) veya kelepçeli başka bir kalıba dökelim. "
                      "\n\n4. Kalıpların kenarlarını yağlamayalım ki eşit kabarsın. "
                      "\n\n5. Önceden ısıtılmış fanlı 170 derece fırında ilk 20 dk kapağı açmadan, daha sonra kürdanla kontrol ederek pişirelim. "
                      "\n\n6. Pişen keki fırından alalım, soğusun. Soğuyunca kurdan ile delikler açıp süt ile ıslatalım. "
                      "\n\n7. Krema için, uygun bir cam kaseye çikolata, süt, tereyağını birlikte ekleyip benmari usulü eritelim. "
                      "\n\n8. Sos biraz erimeye başlayınca yumurta sarısını da ekleyelim ve çırpma teli ile karıştırarak 3-4 dk pişirelim "
                      "\n\n9. Daha sonra ocaktan alıp ılımaya bırakalım. "
                      "\n\n10. Başka bir kapta kremayı krem şanti haline gelene kadar çırpalım. "
                      "\n\n11. Sertleşen kremaya, çikolatalı karışımı ekleyelim ve karıştıralım. Mousse kremamız hazır. "
                      "\n\n12. Bu kremayı  kekimizin üzerine eşit şekilde yayalım,buzdolabında 2 saat bekletelim. "
                      "\n\n13. Pastanın üst tarafını benmari eritilmiş çikolata ve damla çikolata fıstık fındık vs. ile süsleyelim. Tarif için pembecupcake sitesine teşekkürler. Afiyet olsun. "),
            ],
          ),
        ),
      ),
    );
  }
}
