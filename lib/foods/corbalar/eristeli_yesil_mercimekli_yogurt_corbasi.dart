import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_food/theme.dart';

class EristeliYesilMercimekliYogurtCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      appBar: AppBar(
        title: Text(
          "Erişteli Yeşil Mercimekli Yoğurt Çorbası",
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
              Container(
                alignment: Alignment.topCenter,
                height: size.height / 3.18,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "images/Eristeli-Yesil-Mercimekli-Yogurt-Corbasi.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Kaç Kişilik: 4-6",
                      style: TextStyle(
                        fontSize: 12,
                        color: whiteColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Hazırlama: 15dk",
                      style: TextStyle(
                        fontSize: 12,
                        color: whiteColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Pişirme: 15dk",
                      style: TextStyle(
                        fontSize: 12,
                        color: whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Malzemeler",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height / 64,
                      width: size.width / 36,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "2 su bardağı yoğurt",
                        style: TextStyle(
                          fontSize: 18,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height / 64,
                      width: size.width / 36,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "2 yemek kaşığı mercimek (Haşlanacak)",
                        style: TextStyle(
                          fontSize: 18,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height / 64,
                      width: size.width / 36,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "1 adet yumurta",
                        style: TextStyle(
                          fontSize: 18,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height / 64,
                      width: size.width / 36,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "1 tepeleme yemek kaşığı un",
                        style: TextStyle(
                          fontSize: 18,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height / 64,
                      width: size.width / 36,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "1 tatlı kaşığı tuz",
                        style: TextStyle(
                          fontSize: 18,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height / 64,
                      width: size.width / 36,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Yarım su bardağı erişte",
                        style: TextStyle(
                          fontSize: 18,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height / 64,
                      width: size.width / 36,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "3,5 su bardağı su",
                        style: TextStyle(
                          fontSize: 18,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Üzeri İçin:",
                        style: TextStyle(
                          fontSize: 18,
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height / 64,
                      width: size.width / 36,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "1 dolu yemek kaşığı tereyağ",
                        style: TextStyle(
                          fontSize: 18,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height / 64,
                      width: size.width / 36,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "1 dolu çay kaşığı nane",
                        style: TextStyle(
                          fontSize: 18,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Yapılışı",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "1. Öncelikle mercimek bir cezvede şişene kadar haşlanır şişince çok oluyor gözünüze az gelmesin \n\n2. Tencereye yoğurt, yumurta, un, tuz ve su alınıp pürüzsüz olana dek çırpılır. \n\n3. Orta ateşte devamlı çırpılır. \n\n4. Kaynamaya başlamadan önce erişte ilave edilip karıştırmaya devam edilir. \n\n5. Kaynamaya başlayınca haşlanıp süzülmüş yeşil mercimek ilave edilip kısık ateşte 5 dakika pişirilir. \n\n6. Sonrasında tereyağ eritilir. \n\n7. Nane eklenip kızdırılır ve çorbaya ilave edip karıştırılır. \n\n8. 3-4 dakika daha pişmeye bırakılır. \n\n9. Erişteler tam şişmemiş diri gibi dursa da aşırı kaynatmayın sonra dinlenince kendisi şişiyor.",
                    style: TextStyle(
                      fontSize: 18,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
