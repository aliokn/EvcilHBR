import 'package:flutter/material.dart';

import 'package:proje_1/modeller/adsecim.dart';
import 'package:proje_1/screens/barinak.dart';
import 'package:proje_1/modeller/hayvan_secim.dart';
import 'package:proje_1/screens/onay.dart';

import 'package:proje_1/screens/vet_arama.dart';

class Ig extends StatefulWidget {
  @override
  _IgState createState() => _IgState();
}

class _IgState extends State<Ig> {
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
            title: Text('İguana Bakımı'),
            backgroundColor: Colors.cyan,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/surungen2.jpg",
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
                Dgs.ad = "İguananız";
                Sstorage.writeData(Dgs.ad);
                Tgs.ism = "Ig";
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
    "İguana bakımı emek ve zaman isteyen hobilerden biridir. Bir iguana sahibi olmak istiyorsanız, öncelikle iguanaya zaman ayırabileceğiniz den emin olmalısınız. Ayrıca mutlaka almak istediğiniz iguana türü ve özellikleri hakkında önceden bilgi edinmelisiniz."
    "Bazı türleri 2 metreye kadar ulaşabilen iguanaların bakımı sanıldığı kadar kolay olmayabilir.",
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
            title: Text("Beslenme",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            children: [
              Container(
                child: Text(
                    "Etçil bir görünüme sahip olmalarına rağmen iguanalar otçuldur. Genellikle ağaçlar üzerinde yeşil bitkiler, otlar, yapraklar, çiçekler, sebze ve meyvelerle beslenirler. Bazı iguana türlerinin böcekte yediği bilinmektedir."
                    "Bu sebze ve meyvelerin yanı sıra gül ve gül yaprakları, menekşe yaprakları, habiskus, kabak çiçeği, aynı sefa, fuşya çiçeği, kahkaha çiçeği ve petunya gibi çiçekleri de gönül rahatlığı ile yiyebilirler."
                    "Yonca ve buğday çimi iguana beslenmesinde önem taşıyan besinlerdir. Özelikle bağırsak sağlığı için oldukça faydalı olan bu besinleri diyetinde bulundurmanız sağlığı açısından önemlidir. Taze yonca bulamadığınız zamanlarda pelet şeklinde veya kurutulmuş olarak temin edebilir ve iguananıza verebilirsiniz.",
                    softWrap: true,
                    style: TextStyle(color: Colors.white)),
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
            title: Text("Bakımı",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            children: [
              Container(
                child: Text(
                  "İguanalar için doğru iklim yaratılması çok önemlidir. Soğukkanlı canlılar olan bu sürüngenlerin sindiriminin düzgün çalışabilmesi için çevresel ısı önemlidir. Bu nedenle boyutlarına uygun bir kafes temin ettikten sonra ilk almanız gereken malzemeler iguana ısıtıcı lambası ve ısıtıcı kaya olmalıdır."
                  "İguana kafesinde ortalama ısı 24-26 derece olmalıdır ve ısı bu sıcaklığın altına düşmemelidir. Ayrıca kafes içerisinde mutlaka bir güneşlenme alanı oluşturmalısınız. Doğal yaşamlarında saatlerce kıpırdamadan güneşlenen iguana için bu önemli bir gerekliliktir."
                  "Genel sağlığı için gerekli olan güneşlenme alanında ise sıcaklığın 36-40 derece olması gerekmektedir.",
                  softWrap: true,
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    ));
