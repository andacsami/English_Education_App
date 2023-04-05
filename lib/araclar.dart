import 'dart:html';
import 'package:flutter/material.dart';
import 'package:waldo/araclarSoru.dart';
import 'package:waldo/sayilarSoru.dart';

class araclar extends StatefulWidget {
  @override
  State<araclar> createState() => _araclarState();
}

class _araclarState extends State<araclar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("WALDO English Learning Game"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: Image(image: AssetImage("asset/araclar/araclar.png")),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Container(
                    margin: EdgeInsets.all(30.0),
                    width: 100,
                    height: 100,
                    child: MaterialButton(
                      color: Colors.brown,
                      child: new Text("Sorulara Başla",
                      style: new TextStyle(
                        color: Colors.white
                      ),),
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => araclarSoru()));
                      },
                    )),
              ],
            )
          ],
        ));
  }
}
