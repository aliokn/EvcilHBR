import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proje_1/modeller/adsecim.dart';
import 'package:proje_1/screens/barinak.dart';
import 'package:proje_1/screens/park_arama.dart';
import 'package:proje_1/screens/vet_arama.dart';

import 'package:proje_1/modeller/hayvan_secim.dart';
import 'package:proje_1/screens/onay.dart';

class Golden extends StatefulWidget {
  @override
  _GoldenState createState() => _GoldenState();
}

class _GoldenState extends State<Golden> {
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
            title: Text('Golden Retriever Bakımı'),
            backgroundColor: Colors.cyan,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/k1.jpg",
                fit: BoxFit.fill,
              ),
            )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            //Bilgiler buraya
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
                Dgs.ad = "Köpeğiniz";
                Sstorage.writeData(Dgs.ad);
                Tgs.ism = "Golden";
                Storage.writeData(Tgs.ism);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Onay()));
              },
              child:
                  buildButtonColumn(Colors.green, Icons.check, "Hayvanım seç")),
        ],
      ),
    );
  }
}

Widget genelbilgi = Container(
  child: Text(
    "Golden retriever'lar özellikle insanlarla iyi anlaştıkları ve çok sosyal oldukları için tercih edilirler."
    "Bu nedenden dolayı sıklıkla rehber köpek olarak eğitilirler."
    "Çok sabırlıdırlar ve çocuklarla oldukça iyi olan bir köpek ırkıdır.Bebek bakıcılığı bile yapabilirler.Görme engellilere de yardımcı köpek olarak verilen bir cinstir."
    "Kolaylıkla eğitilirler ve çocuklarla iken güvenilir ve naziktirler. Sadık, kendine güvenen, tatlı ve sahibini memnun etmeye hevesli bir ırktır.",
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
                  "Golden Retriever’ınızı yüksek kaliteli mamalarla beslemelisiniz. Böylece köpeğiniz hangi yaşta olursa olsun ona ihtiyaç duyduğu tüm besinleri verebilirsiniz."
                  "Yemeye çok düşkün oldukları için mama dışı gıdaları yemeye de eğilim gösterebilirler. Hatta bu nedenle kimi Golden Retriever’ların obez olduğu dahi görülmüştür."
                  "Köpeğinizin fazla kilolu olmasını önlemek için kilo seviyesini izlemeniz ve yalnızca ihtiyaç duyduğu kadar kalori tüketmesini sağlamalısınız. ",
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
                  "Golden Retriever, oldukça aktif bir köpek ırkıdır. Bu nedenle günlük olarak egzersiz yapmalarında büyük yarar var. Yeterli egzersiz yapmadıklarında istenmeyen davranışlar sergileyebilirler."
                  "Yürüyüş, koşu, bisiklet gibi aktivitelerinize memnuniyetle eşlik edecek olan Golden Retriever köpeğinizin kemik ve eklem yapısının sağlıklı kalabilmesi için fazla yorucu etkinliklerden kaçınmalısınız.",
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
                  "Golden ırkı köpeklerde tuvalet eğitimi için en uygun zaman köpeğinizin eve girdiği vakittir. Köpek tuvalet eğitimi konusunda işe hemen başlamak için evin bir odasının zeminini tamamen gazete kağıdı ile kaplayın."
                  "Ve yemeklerden sonra, egzersizlerden, oyunlardan sonra ortalama olarak 15 dakika sonra gelecek olan tuvaletini bu bölgede yapmasını sağlayalım."
                  "Devam edecek 4-5 gün bu alan olduğu gibi kalsın sadece tuvaletini alıp atalım ancak tuvalet yaptığı gazeteyi aynı yere koyalım. Bir kaç gün daha geçtikten sonra ve sadece aynı kağıda yapıyorsa eğer odada ki gazete kağıtlarının sayısını düşürebiliriz."
                  "Zaman içerisinde tuvalet konusunda nereyi tercih edeceğini hem sizin tuvalet eğitiminiz hemde köpek içgüdüleri ile daha farkında bir şekilde biliyor olacak.",
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
                  "Yavrunun evdeki ilk birkaç gün çok önemlidir. Yavru, ilk kez kendi başına ve annesinden ve kardeşlerinden uzakta olacak ve çok korkacak. Yavrular da bu birkaç günde ağlama normaldir."
                  "Bu durum birkaç gün sonra duracaktır. Bu dönemde köpeğin kendini evde rahat hissetmesi için kafesler oldukça işlevseldir"
                  "Yavruların genellikle yetişkin köpeklerden daha sık yemeye ihtiyaçları vardır. Günde bir veya iki kez bir yetişkin köpeği besleyebilir, ancak Golden köpek yavrusu günde üç veya daha fazla öğün beslenmesi gerekebilir."
                  "Köpeğin yavruluk döneminden itibaren taranma ve banyo gibi temizlenme işlemlerine alıştırılmalıdır. Orta sıklıkta tüy döken Golden Retriever cinsini gülük taramak tüy dökümünü minimuma indirmek için fayda sağlar.",
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
                  "Tüm köpek ırkları gibi golden retrieverlarda da bazı sağlık sorunlarına yatkınlık vardır.Kalça dizplazisi,Cilt sorunları"
                  "Katarakt ve Kanser(ne yazık ki golden retriever tüm köpekler arasında en yüksek kanser olma oranına sahip)",
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
