import 'package:flutter/material.dart';

import 'package:proje_1/modeller/adsecim.dart';
import 'package:proje_1/screens/barinak.dart';
import 'package:proje_1/modeller/hayvan_secim.dart';
import 'package:proje_1/screens/onay.dart';

import 'package:proje_1/screens/vet_arama.dart';

class Yilan extends StatefulWidget {
  @override
  _YilanState createState() => _YilanState();
}

class _YilanState extends State<Yilan> {
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
            title: Text('Yılan Bakımı'),
            backgroundColor: Colors.cyan,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/surungen3.jpg",
                fit: BoxFit.fill,
              ),
            )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            //Bilgiler buraya
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Dekor(),
                  krtgnl,
                  krtbsl,
                  krtbkm,
                ],
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
                Dgs.ad = "Yılanınız";
                Sstorage.writeData(Dgs.ad);
                Tgs.ism = "Yilan";
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
    "Farklı özellik gösteren,egzotik bir hayvan olan yılanların bakımı bir hayli zordur.Bir evcil yılan edinmeden önce bunun sorumluluğunu üstlenebilecek durumda olmak gerekir.Öncelikle hayvanınıza iyi bakabilmeniz için yılan bakımı hakkında bilgiler edinmek gerekmektedir."
    "Çünkü yılan bildiğimiz evcil hayvanların dışında özel bir hayvandır.Belirli bir sıcaklıkta ve nemli ortamda yaşamaları gerekmektedir.",
    softWrap: true,
    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
                  "Her evcil hayvanda olduğu gibi yılanlarda da bakımlarının en önemli kısmı beslenme düzenleridir. Yılanlarda beslenme bilgisi edinmeyen bir kişi yılan bakımını tam olarak yapamaz. Yılanınızı aldığınız pet shoptan muhakkak düzenli olarak ne yediğini öğrenip ona devam edin."
                  "Ani gıda değişimleri zaten stres faktörünün çok olduğu (yeni bir sahip, yeni bir yaşam alanı vb.) bu dönemde daha da zararlı olabilir.",
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
                  "Yılanlar 70-90 derecelik ısıdaki tanklarda yaşamalıdırlar. Bazı tanklara yılanların D vitamini alabilmeleri için özel ultraviole aydınlatmalarla takviye yapılabilir."
                  "Derilerini ve göz çevrelerindeki kabukları dökebilmeleri için de nemli bir ortam gerekmektedir."
                  "Ayrıca hızla ve kontrol edilemez biçimde uzadıkları için içinde rahatça gevşeyebilecekleri büyüklükte bir tank almanız çok önemlidir. ",
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
