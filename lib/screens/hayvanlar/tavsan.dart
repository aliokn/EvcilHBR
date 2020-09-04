import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proje_1/modeller/adsecim.dart';

import 'package:proje_1/screens/barinak.dart';
import 'package:proje_1/screens/vet_arama.dart';
import 'package:proje_1/screens/park_arama.dart';
import 'package:proje_1/modeller/hayvan_secim.dart';
import 'package:proje_1/screens/onay.dart';

class Tavsan extends StatefulWidget {
  @override
  _TavsanState createState() => _TavsanState();
}

class _TavsanState extends State<Tavsan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff640AFF),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            automaticallyImplyLeading: false,
            floating: true,
            pinned: false,
            snap: false,
            title: Text('Tavşan Bakımı'),
            backgroundColor: Colors.cyan,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/tavsan1.jpg",
                fit: BoxFit.fill,
              ),
            )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [Dekor(), krtgnl, krtbsl, krtbkm, krtyvru, krthstlk],
              ),
            ),
          ]))
        ],
      ),
    );
  }
}

Column buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: color),
        ),
      )
    ],
  );
}

class Dekor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
      decoration: BoxDecoration(
          color: Color(0xffFFD485),
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Arama()));
              },
              child: buildButtonColumn(
                  Colors.cyan, Icons.near_me, 'En yakın veteriner')),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Barinak()));
              },
              child: buildButtonColumn(
                  Colors.cyan, Icons.location_on, 'En yakın barınak')),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ParkArama()));
            },
            child: buildButtonColumn(
                Colors.cyan, FontAwesomeIcons.tree, 'En yakın park'),
          ),
          InkWell(
              onTap: () {
                Dgs.ad = "Tavşanınız";
                Sstorage.writeData(Dgs.ad);
                Tgs.ism = "Tavşanınız";
                Storage.writeData(Tgs.ism);

                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Onay()));
              },
              child:
                  buildButtonColumn(Colors.green, Icons.check, "Hayvanım seç"))
        ],
      ),
    );
  }
}

Widget genelbilgi = Container(
  child: Text(
    "Tavşanlar, sevgiye karşılık veren, çok sevimli, popüler evcil hayvanlardır."
    "Ailenin bir parçası olmayı bilirler, ancak hassas hayvanlar olduklarından, küçük çocuklara değil, daha çok gençlere ve yetişkinlere uygun dostlardır.",
    softWrap: true,
    style: TextStyle(color: Colors.white),
  ),
);

Widget krtgnl = Container(
    padding: EdgeInsets.only(top: 20),
    child: Card(
      color: Color(0xff0496FF),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ExpansionTile(
            title: Text(
              "Genel Bilgi",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            children: [genelbilgi],
          )
        ],
      ),
    ));
Widget krtbsl = Container(
    padding: EdgeInsets.only(top: 20),
    child: Card(
      color: Color(0xff0496FF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ExpansionTile(
            title: Text(
              "Beslenme",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            children: [
              Container(
                child: Text(
                  "Tavşanlar bütün yeşillikleri sever. Özellikle marul ve salatalık bolca verebilirsiniz. Ayrıca tavşanları beslemek için özel olarak üretilen tavşan yemleri de bulunmaktadır."
                  "Beslediğiniz tavşan daha küçükse ona hızlı büyüyüp gelişmesi için bu yemlerden verebilirsiniz.",
                  softWrap: true,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    ));
Widget krtbkm = Container(
    padding: EdgeInsets.only(top: 20),
    child: Card(
      color: Color(0xff0496FF),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ExpansionTile(
            title: Text(
              "Bakımı",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            children: [
              Container(
                child: Text(
                  "Tavşanlar içeride ya da dışarıda yaşayabilirler, ancak onları evde tutmayı tercih edenlerin, güvenliklerini sağlamak için ekstra özen göstermeleri, örneğin açıkta duran bütün elektrik kabloları ortadan kaldırılmalı, zehirli olabilecek ev bitkileri bulundurulmamalıdır."
                  "Tavşanların doğal davranışlarını sergileyebilmeleri sağlıkları açısından çok önemlidir."
                  "Bu nedenle de, rahatça hoplayıp oynayabilecekleri bir yerde tutulmaları gerekir",
                  softWrap: true,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    ));
Widget krttvlt = Container(
    padding: EdgeInsets.only(top: 20),
    child: Card(
      color: Color(0xff0496FF),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ExpansionTile(
            title: Text(
              "Tuvalet Eğitimi",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            children: [
              Container(
                child: Text(
                  "Bir tavşanın tuvalet terbiyesi çok kolaydır."
                  "Tuvalet olarak hangi köşeyi kullanmayı tercih ettiğini anladıktan sonra, o yere tavşanın rahatça kullanabileceği, gerekli büyüklükte bir atık tepsisi yerleştirmek yeterlidir.",
                  softWrap: true,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    ));
Widget krtyvru = Container(
    padding: EdgeInsets.only(top: 20),
    child: Card(
      color: Color(0xff0496FF),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ExpansionTile(
            title: Text(
              "Yavru Bakımı",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            children: [
              Container(
                child: Text(
                  "Yavru tavşan bakımı evcil hayvanlar içerisinden en keyif verecek anları da beraberinde getirir. Yavru tavşanlar öğrenmeye oldukça meraklıdırlar. Gördükleri her şeyi yalama ve dokunma eğilimindedirler. Ne görürlerse görsünler mutlaka yanlarına giderler, koklar ya da yalarlar."
                  "Bu yüzden evde tavşan besleyenlerin elektrik kablolarını ortalıkta bırakmaması gerekir. Çünkü yavru tavşan kabloyu tanımak için onu ısırabilir."
                  "Yavru tavşanlar ilk 15 gün anne sütü ile beslenmelidir. 15.günden itibaren yumuşak besinleri yemeye başlayabilirler. 3 haftalık olduklarında kuru besleyici yemleri de yemeğe başlayabilirler. Dilerseniz daha geç yani 4.haftalık olduktan sonra da kuru gıdaya geçebilirsiniz.",
                  softWrap: true,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    ));
Widget krthstlk = Container(
    padding: EdgeInsets.only(top: 20),
    child: Card(
      color: Color(0xff0496FF),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ExpansionTile(
            title: Text(
              "Hastalık",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            children: [
              Container(
                child: Text(
                  "Stres, tavşanlarda hastalıkların ortaya çıkmasında en önemli şeydir. Bu sebeple tavşanınızı hastalıklardan korumanın ilk şartı; tavşanınız için gerekli olan uygun olan yaşam ortamını sağlamaktır."
                  "Hijyenik bir yaşam alanı, uygun beslenme ve uygun çevre sıcaklığının sağlanması ile birlikte kemirme ihtiyacının mutlaka karşılanması gerekmektedir."
                  "Bunun dışında tavşanlarda görülen diğer hastalıklar tüberkloz,ishal,tüy yutma durumu olan trikobezoardır.",
                  softWrap: true,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    ));
