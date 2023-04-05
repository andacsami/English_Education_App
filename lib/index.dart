import 'package:flutter/material.dart';
import 'package:waldo/araclar.dart';
import 'package:waldo/canCant.dart';
import 'package:waldo/gecmisZaman.dart';
import 'package:waldo/genisZaman.dart';
import 'package:waldo/hayvanlar.dart';
import 'package:waldo/renkler.dart';
import 'package:waldo/sahiplik.dart';
import 'package:waldo/sayilar.dart';
import 'package:waldo/should.dart';
import 'package:waldo/simdikiZaman.dart';
import 'package:waldo/zamanlar.dart';
import 'package:waldo/zamir.dart';

class index extends StatefulWidget {
  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("WALDO English Learning Game"),
          backgroundColor: Color.fromARGB(255, 138, 163, 175),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                new Container(
                    margin: EdgeInsets.all(30.0),
                    width: 100,
                    height: 60,
                    child: MaterialButton(
                      color: Colors.brown,
                      child: new Text(
                        "Zamirler - PRONOUS",
                        style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => zamir()));
                      },
                    )),
                new Container(
                    margin: EdgeInsets.all(30.0),
                    width: 100,
                    height: 60,
                    child: MaterialButton(
                      color: Colors.brown,
                      child: new Text(
                        "Sayılar - NUMBERS",
                        style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => sayilar()));
                      },
                    )),
                new Container(
                    margin: EdgeInsets.all(30.0),
                    width: 100,
                    height: 60,
                    child: MaterialButton(
                      color: Colors.brown,
                      child: new Text(
                        "Zamanlar - TIMES",
                        style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => zamanlar()));
                      },
                    )),
              ],
            ),
            new Row(
              children: <Widget>[
                new Container(
                    margin: EdgeInsets.all(30.0),
                    width: 100,
                    height: 60,
                    child: MaterialButton(
                      color: Colors.brown,
                      child: new Text(
                        "Sahiplik HAVE - HAS",
                        style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => sahiplik()));
                      },
                    )),
                new Container(
                    margin: EdgeInsets.all(30.0),
                    width: 100,
                    height: 60,
                    child: MaterialButton(
                      color: Colors.brown,
                      child: new Text(
                        "Can - Can't",
                        style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => canCart()));
                      },
                    )),
                new Container(
                    margin: EdgeInsets.all(30.0),
                    width: 100,
                    height: 60,
                    child: MaterialButton(
                      color: Colors.brown,
                      child: new Text(
                        "Should - Shouldn't",
                        style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => should()));
                      },
                    )),
              ],
            ),
            new Row(
              children: <Widget>[
                new Container(
                    margin: EdgeInsets.all(30.0),
                    width: 100,
                    height: 60,
                    child: MaterialButton(
                      color: Colors.brown,
                      child: new Text(
                        "Renkler - Colors",
                        style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => renkler()));
                      },
                    )),
                new Container(
                    margin: EdgeInsets.all(30.0),
                    width: 100,
                    height: 60,
                    child: MaterialButton(
                      color: Colors.brown,
                      child: new Text(
                        "Hayvanlar - Animals",
                        style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => hayvanlar()));
                      },
                    )),
                new Container(
                    margin: EdgeInsets.all(30.0),
                    width: 100,
                    height: 60,
                    child: MaterialButton(
                      color: Colors.brown,
                      child: new Text(
                        "Araçlar - Vehicles",
                        style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => araclar()));
                      },
                    )),
              ],
            ),
            new Row(
              children: <Widget>[
                new Container(
                    margin: EdgeInsets.all(30.0),
                    width: 100,
                    height: 70,
                    child: MaterialButton(
                      color: Colors.brown,
                      child: new Text(
                        "Geniş Zaman - Simple Present Tense",
                        style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => genisZaman()));
                      },
                    )),
                new Container(
                    margin: EdgeInsets.all(30.0),
                    width: 100,
                    height: 70,
                    child: MaterialButton(
                      color: Colors.brown,
                      child: new Text(
                        "Geçmiş Zaman - Simple Past Tense",
                        style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => gecmisZaman()));
                      },
                    )),
                new Container(
                    margin: EdgeInsets.all(30.0),
                    width: 100,
                    height: 70,
                    child: MaterialButton(
                      color: Colors.brown,
                      child: new Text(
                        "Şimdiki Zaman - Present Continuous Tense",
                        style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => simdikiZaman()));
                      },
                    )),
              ],
            ),
          ],
        ));
  }
}
