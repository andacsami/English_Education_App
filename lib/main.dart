import 'package:flutter/material.dart';
import 'package:waldo/index.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),
    (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => index()));
    }
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/WALDO.png"), fit: BoxFit.cover)),
    ));
  }
}
