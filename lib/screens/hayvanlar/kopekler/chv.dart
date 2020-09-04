import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proje_1/modeller/adsecim.dart';
import 'package:proje_1/screens/barinak.dart';
import 'package:proje_1/screens/park_arama.dart';
import 'package:proje_1/screens/vet_arama.dart';

import 'package:proje_1/modeller/hayvan_secim.dart';
import 'package:proje_1/screens/onay.dart';

class Chiu extends StatefulWidget {
  @override
  _ChiuState createState() => _ChiuState();
}

class _ChiuState extends State<Chiu> {
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
            title: Text('Chihuahua Bakımı'),
            backgroundColor: Colors.cyan,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/k4.jpg",
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
                Dgs.ad = "Köpeğiniz";
                Sstorage.writeData(Dgs.ad);
                Tgs.ism = "Chiu";
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
    "Chihuahua (Şivava) ırkı tarihi çok eskilere uzanan ve dünyanın en ufak olan bir köpek ırkıdır. Bu köpek adeta yüz ifadesi olarak fareye benzemektedir."
    "Kafa yapısı olarak bir kubbe ile fazlasıyla benzerlik gösteriyorlar. Bu köpekler soğuk havalardan hiç hoşlanmazlar ve buna istinaden ev yaşantısı bu tür için fazlasıyla iyidir."
    "Eğitim konusuna gelindiğinde ırkın eğitiminde iyi geri dönüşler alırsınız fakat mutlaka profesyonel bir eğitim sürecinden geçirilmesi gerekmektedir.",
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
                  "Chihuahua yemek konusunda seçici davranabilir ve karışık beslenmekten hoşlanmaz. Bu nedenle ırkın tüm besinsel ihtiyaçlarını karşılayacak kaliteli bir kuru köpek maması seçmeli ve hep aynı mamayı kullanmaya özen göstermelisiniz."
                  "Özellikle şivavanızın yaşına uygun bir mama olmasına dikkat etmelisiniz. Çünkü tüm ırklarda olduğu gibi bu oyuncak köpeğinde yavru, yetişkin veya yaşlılık döneminde ihtiyaçları farklıdır. "
                  "Bu yaş evrelerine göre beslenebilmesi ve ihtiyaçlarının dengeli olarak tamamlanabilmesi için, ırka özel hazırlanmış mamaları tercih edebilirsiniz.",
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
                  "Sadece insanlarla birlikte olmak isteyen bakımı çok kolay bir köpek ırkıdır. Chihuahua bakımı genel olarak tüm köpek ırklarının temel bakımı ile aynıdır."
                  "Düzenli tırnak kesilmesi, dişlerinin düzenli fırçalanması ve kulaklarının kontrol edilerek temizlenmesi gerekir."
                  "Chihuahua ırkı köpeklerin bakımında dikkat edilmesi gereken bir konuda bu ırkın soğuk havalardan kolay etkilenmesi ve titreme eğilimidir."
                  "Ayrıca heyecanlandığında ve korktuğunda da titremeye başlayan şivava için kış aylarında dışarı çıkarken,mutlaka bir köpek kazağı veya kalın bir köpek montu gibi köpek elbiseleri kullanılmalıdır.",
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
                  "Chihuahua köpeklerin, tuvalet eğitimleri çok zor verilir ve çok zaman alır.Bu eğitim için profesyonel bir yardım almayı düşünebilirsiniz."
                  "Fakat bunu kendiniz yapmakta kararlıysanız diğer köpeklere verilen tuvalet eğitimi dışında herhangi başka bir yöntem bulunmamaktadır.",
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
                  "Yavru bir Chihuahua köpeğinin her beslemeden sonra tuvaletleri yaptırılmalıdır. İlgili bölgeler nemli bir pamuk ile yumuşakça silinerek tuvaletleri yaptırılmalıdır. Yavrular ilk 3 hafta kendi kendine tuvaletlerini yapamazlar."
                  "Yavruların kiloları, günlük olarak kontrol edilmeli. Kilo almayan yavruların beslenmelerine, daha özen gösterilmelidir."
                  "Yavruların, ilk iç parazit uygulamaları, asla ihmal edilmemelidir. Parazitler yavrular için ölümcül olabilirler. Yavrular parazitler sebebiyle, nörolojik nöbetlere benzer nöbetler geçirebilirler"
                  "Ayrıca 3 aylık oluncaya ve tüm aşı ve parazit tedavileri yapılıncaya kadar dışarıya çıkarmamalıdırlar. Son aşısından 15 gün sonra güvenle dışarı çıkarabilirsiniz.",
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
                  "Bu ırk 14 – 18 yıl, hatta 20 yıl yaşayabilen sağlıklı bir köpektir. Chihuahua ırkı köpekler genel olarak sağlıklı olsa da bazı hastalıklara karşı genetik yatkınlığı söz konusudur."
                  "En sık karşılaşılan hastalıklar ise kalp üfürümleri,Hipoglisemi yani düşük kan şekeri,Patellar Luxation(diz kapağı çıkığı),Pulmonik Stenoz yani doğuştan gelen kalpteki pulmoner kapağı hasarı ve kan akışındaki problem.",
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
