import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "BUGÜN NE YESEM?",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List corbaListe = ["mercime çorbası","ezogelin çorbası","tavuk","et çorbası","yoğurtlu çorba"];
  List yemekListe = ["karnıyarık","mantı","kuru fasülye","içli köfte","balık"];
  List tatliList = ["kadayıf","baklava","sütlaç","kazandibi","dondurma"];

  void degistir() {
    corbaNo = Random().nextInt(5) + 1;
    yemekNo = Random().nextInt(5) + 1;
    tatliNo = Random().nextInt(5) + 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) { 
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: degistir,
                  child: Image.asset("assets/corba_$corbaNo.jpg")),
            ),
          ),
          Text(
            corbaListe[corbaNo - 1 ],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: degistir,
                  child: Image.asset("assets/yemek_$yemekNo.jpg")),
            ),

          ),
           Text(
            yemekListe[yemekNo - 1 ],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: degistir,
                  child: Image.asset("assets/tatli_$tatliNo.jpg")),
            ),
          ),
           Text(
            tatliList[tatliNo - 1 ],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
