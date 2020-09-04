import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proje_1/modeller/adsecim.dart';
import 'package:proje_1/screens/barinak.dart';
import 'package:proje_1/screens/park_arama.dart';
import 'package:proje_1/screens/vet_arama.dart';

import 'package:proje_1/modeller/hayvan_secim.dart';
import 'package:proje_1/screens/onay.dart';

class Brtsh extends StatefulWidget {
  @override
  _BrtshState createState() => _BrtshState();
}

class _BrtshState extends State<Brtsh> {
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
            title: Text('Britishh Shorthair Bakımı'),
            backgroundColor: Colors.cyan,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/kedi1.jpg",
                fit: BoxFit.fill,
              ),
            )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [Dekor(), krtgnl, krtbsl, krtuyku, krtyvru, krthstlk],
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
                Dgs.ad = "Kediniz";
                Sstorage.writeData(Dgs.ad);
                Tgs.ism = "Brit"; //gidilecek sayfa
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
    "British Shorthair; İngiliz kısa tüylü kedisidir ve kökeni İngiltere'dir."
    "19 yy'da, kedi üreticisi olan Harrison Weir tarafından, bir kedi yarışmasına katılarak, dünyaca tanınmış bir kedi cinsi olmuştur",
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
                  "British Shorthair, yaşamsal faaliyetlerinin en üst düzeye çıkartılması için her daim yavru ve yetişkin kedilerin kaliteli kedi maması ile beslenmesi oldukça önemlidir."
                  "Bebeklikten yaşlılığa kadar süren zamanda British Shorthair doğru bir beslenme ve yaşına uygun mama tüketimi ile beslenmesi önerilmektedir.",
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
Widget krtuyku = Container(
    padding: EdgeInsets.only(top: 20),
    child: Card(
      color: Color(0xff0496FF),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ExpansionTile(
            title: Text(
              "Uyku Düzeni",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            children: [
              Container(
                child: Text(
                  "Herhangi bir kedi gibi British Shorthair kediside gayet uykucudur.Kendine ait hoş bir alan buldu mu artık bir yatak sahibi olmuş olur"
                  "British Shorthair kedisinin yüzündeki kısa kemikler sebebiyle uyurken horlama benzeri seslerle karşılaşabilirsiniz",
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
                  "İlk etapta British Shorthair tuvalet eğitimi aşamalarında kedinizi nazikçe tuvalet kumunun bulunduğu kutuya koymanız gerekmektedir."
                  "Özellikle yemeğini afiyetle yedikten birkaç dakika sonra ve uykusundan uyandıktan sonraki birkaç dakikalık süreçte kedinizi mutlaka kumunun içine bırakın."
                  "Kediniz tuvaletin içindeyken onu kendi haline bırakın ve etrafı koklayıp neyin ne olduğunu incelemesine izin verin."
                  "Daha önce evinde hiç British Shorthair bakmamış kediler için ayrı bir parantez açmak gerekirse, kediler içgüdüsel olarak tuvaletlerini gömmeyi tercih etmektedir."
                  "Bu yüzden yavru British Shorthair kedinizin tuvaletin içindeki kumu eşelemesi gayet normaldir.",
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
                  "British Shorthair yavruları annelerinin ilgisinden çok memnun ve aynı şekilde annelerine çok bağlı olurlar. Yavru British Shorthair Kedileri, çok enerjik, hareketli ve cana yakındırlar."
                  "Yavru bir British Shorthair kedisi annesinden uzak kalırsa stres yaşayabilirler. Bu sebeple onları stresten kurtarmak için göğsünüze kalbinizin ritmini hissedebileceği şekilde yatırabilirsiniz."
                  "Bu sayede hem vücut ısınızla onu ısıtacak hem de kalp atışınızın sesleriyle kedinin endişelerini gidermeye yardımcı olacaksınız."
                  "Eğitilmeye açıktırlar. Annelerinden ayrıldıktan sonra, sahiplerine bağlanırlar ve onlarla çok derin bağlar kurabilirler.",
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
                  "British shorthair ırkında hipertrofik kardiyomiyopati isimli kalp hastalığına yatkınlık vardır."
                  "Aynı zamanda böbrek hastalıkları ile de karşılaşılabilir. Bu ırkta sık görülen sorunlar arasında böbrek hastalıkları sayılabilir."
                  "British shorthair kedileri çoğu ırk gibi diş ve diş eti hastalıklarından mustarip olabilir."
                  "Bu kedileri diş ve diş eti sorunlarından korumak için kuru mama vermenin yanı sıra dişlerin fırçalanması ve rutin veteriner kontrollerinde diş kontrollerinin de yaptırılması etkili önlemlerdir.",
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
