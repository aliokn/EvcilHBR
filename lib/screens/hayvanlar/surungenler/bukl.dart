import 'package:flutter/material.dart';
import 'package:proje_1/modeller/adsecim.dart';
import 'package:proje_1/screens/barinak.dart';
import 'package:proje_1/modeller/hayvan_secim.dart';
import 'package:proje_1/screens/onay.dart';
import 'package:proje_1/screens/vet_arama.dart';

class Bkl extends StatefulWidget {
  @override
  _BklState createState() => _BklState();
}

class _BklState extends State<Bkl> {
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
            title: Text('Bukalemun Bakımı'),
            backgroundColor: Colors.cyan,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/surungen1.jpg",
                fit: BoxFit.fill,
              ),
            )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: EdgeInsets.only(top: 10),
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
                Dgs.ad = "Bukalemununuz";
                Sstorage.writeData(Dgs.ad);
                Tgs.ism = "Bkl";
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
    "Bukalemunlar doğada renk değiştirmesiyle tanınan sürüngenlerdendir."
    "Bukalemunların evde beslenmesi oldukça zordur. Eğer uygun koşullarda bakılmazlarsa çok fazla yaşayamazlar.",
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
                  "Bukalemunlar böcek yiyerek beslenen hayvanlardır. Günde en az 20-30 sinek ya da hamam böceği yemelerini sağlamak gerekmektedir. Eğer bunlar ile beslenmesi sağlanamazsa 7-8 adet canlı çekirge de verilebilir."
                  "Bu tarz canlı yemler ile beslenmesi sağlanamıyorsa balıklar için üretilmiş olan kurtulmuş karidesler de bukalemunlara verilebilir. Ancak bu yemlerin yanında canlı yemlerin de mutlaka verilmesi gerekmektedir.",
                  softWrap: true,
                  style: TextStyle(color: Colors.white),
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
                  "Normal kertenkeleler için yapılmış olan akvaryumlar, bukalemunlara ufak gelecektir. Bukalemunlar için özel bir terraryum yapmayı düşünüyorsanız, yan ve üstlerine sinek teli kullanmak yerine bukalemunlarınızın kaçamayacağı büyüklükte kümes telleri kullanmanız tavsiye edilmektedir."
                  "Bukalemunlarınız için oldukça geniş bir alan yaratmanız gerekmektedir. Bunun için en az 1x1x1,5 metre ebatlarında bir alana sahip olmaları gerekmektedir. Bu alanların içerisinde hayvanların rahatça tırmanabileceği bitkiler ve dallar bulunması önerilmektedir.",
                  softWrap: true,
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    ));
