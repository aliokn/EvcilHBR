import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proje_1/modeller/adsecim.dart';
import 'package:proje_1/screens/barinak.dart';
import 'package:proje_1/screens/park_arama.dart';
import 'package:proje_1/screens/vet_arama.dart';

import 'package:proje_1/modeller/hayvan_secim.dart';
import 'package:proje_1/screens/onay.dart';

class Bldg extends StatefulWidget {
  @override
  _BldgState createState() => _BldgState();
}

class _BldgState extends State<Bldg> {
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
            title: Text('Bulldog Bakımı'),
            backgroundColor: Colors.cyan,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/k3.jpg",
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
                Tgs.ism = "Bldg";
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
    "Bulldog cinsi köpekler görünüş olarak asil ve gururlu durmaktadırlar."
    "Kalın ve tombik vücut yapısı sebebiyle çok kısa bacaklara sahiptir. Bu ırkın görünüşündeki en belirgin özelliği ise ağız yapısıdır."
    "Bu ırk son derece zekidir ve kolaylıkla insanları  etkisi altına alma kabiliyetine sahiptir. Bulldog ırkının  mizacı dengeli ve kibar, kararlı, sağlam ve cesur olmalıdır."
    "Kesinlikle huysuz,  saldırgan ve agresif olmamalıdır. Bulldog ırkı köpekler  iyi insanlara karşı her zaman iyi tepkiler verir ve olumlu şekilde yaklaşırlar.",
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
                  "Bulldog cinsinin beslenme rutini yalnızca veteriner kontrolünde gerçekleştirilmelidir."
                  "Veterinerin önerdiği kaliteli ve besleyici mamalar belirli zaman aralıkları ile verilmelidir. Bunun dışında herhangi bir yiyecek verilmemesi gerekmektedir.",
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
                  "Diğer basık suratlı  ırklar gibi Bulldog ırkı da havasız yerlerde ve stres yaşayacağı ortamlarda  kesinlikle tek başına bırakılmamalıdır. Eğer bu tanıma uyan ortamlarda  köpeğinizi bırakmak mecburiyetinde kalırsanız, gözleriniz sürekli köpeğinizin  üzerinde olmalıdır."
                  "Herhangi bir güneş çarpması veya solunum yetmezliği problemi yaşamak istemiyorsanız köpeğinizi daima gölgelik alanlarda gezdirmeli  ve yanınızda her zaman temiz su bulundurmalısınız."
                  "Bu cinsin salyaları çok sık akmaktadır. Bu nedenle ağız ve dişleri her gün ve sık sık nemli bez ile temizlenmelidir. İlerleyen yaşında bu sorun daha belirgin bir hale gelecektir.",
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
                  "Tuvalet için yemek yediği ve uyuduğu bölgeden uzak bir yere bölüm ayırmalısınız. Eğer dışarı alıştırmak istiyorsanız ve köpeğiniz yavru Bulldogsa sık sık tuvalet yapma ihtiyacı duyacağından sürekli dışarı çıkarmanız gerekecektir."
                  "Köpeğinizin yaşayacağı bölgeye veteriner hekimlerden veya petshoplardan aldığınız tuvalet pedlerini serin. Bu pedleri serme amacınız oluşabilecek tuvalet kazalarının evi kirletmesini önlemek içindir."
                  "Sonuçta sizin evde olmadığınız, uzun süre ilgilenemediğiniz, dışarı çıkaramadığınız zamanlarda mecbur kalınca tuvaletini pedlere yapacaktır. Ve böylelikle evin her yerine tuvaletini yapmamış olacaktır.",
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
                  "Bulldog yavruları yumuşak ve kısa bir kürke sahiptir. Çok fazla taranma ve yıkanma gerektirmez. Tüylerini dibindeki vücut yağlarını kaybetmemek için sık sık banyo yapılmamalıdır."
                  "Banyo için köpeklere özel şampuanları tercih edin. İnsanların şampuanları ve vücut losyonları ph değerleri gibi kimyasal değerlerin farklılığı sebebi ile köpeğin cildine ve tüylerine zarar verebilir."
                  "Banyo sonrasında tüylerinin sağlığı ve parlaklığı için köpeklere özel kremler kullanılması önerilir."
                  "Bulldog yavruları, çok iştahlı köpeklerdir. O sebepten yavruların tükettiği mama miktarını ölçülü takip etmek gerekir. Ölçü ile takip edilmezse yavru ihtiyacı olandan her zaman daha fazlasını ister."
                  "Mamanın yanında bir diğer dikkat edilmesi gerekende atıştırmalıklardır. Gün içinde bir Bulldog yavrusuna sürekli olarak atıştırmalık verseniz gün boyunca buna itiraz etmez."
                  "Bu da hızlı bir şekilde kilo olmasına ve kemik-eklem gelişiminde sağlık sorunlarına yol açar. Artan yağ oranı çeşitli iç hastalıklarına dönüşür.",
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
                  "Bulldog cinsi maalesef diğer pek çok farklı köpek türünde olduğu gibi birkaç kalıtsal rahatsızlığa sahiptir.Bulldog cinsinin tıpkı atalarında olduğu gibi solunum problemleri bulunmaktadır."
                  "Bu sebeple sık sık horlar.Bu cinsindeki köpeklerde göz problemleri de görülebilir. Sıcak havalara karşı inanılmaz hassas olan bu cins, muhakkak klimalı bir ortamda tutulmalıdır,Doğuştan cilt problemleri ve kalça ve diz sorunları yaşayabilir."
                  "Kilo almaya aşırı eğimli olduğu için bacaklarına olan yükü daha da artar."
                  "Bu da kalça ve diz sorunlarını arttırabilir",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                  softWrap: true,
                ),
              )
            ],
          )
        ],
      ),
    ));
