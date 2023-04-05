import 'dart:html';

import 'package:flutter/material.dart';
import 'package:waldo/canCantSoru.dart';
import 'package:waldo/renklerSoru.dart';
import 'package:waldo/zamirSoru.dart';

class renkler extends StatefulWidget {
  @override
  State<renkler> createState() => _renklerState();
}

class _renklerState extends State<renkler> {
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
              child: Image(image: AssetImage("asset/renkler/renkler.png")),
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
                          MaterialPageRoute(builder: (context)=> renklerSoru() ));
                      },
                    )),
              ],
            )
          ],
        ));
  }
}
