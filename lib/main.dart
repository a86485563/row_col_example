import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<String> images = [
    'assets/images/Rick_and_Morty_season_1.png',
    'assets/images/Rick_and_Morty_season_2.png',
    'assets/images/Rick_and_Morty_season_3.jpg',
    'assets/images/Rick_and_Morty_season_4.jpg',
    'assets/images/Rick_and_Morty_season_5.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("row and colume example")),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Rick',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    height: 1.2,
                    fontFamily: "Courier",
                    background: Paint()..color = Colors.blue,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed),
              ),
              Text(
                '&',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    height: 1.2,
                    fontFamily: "Courier",
                    background: Paint()..color = Colors.blue,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed),
              ),
              Text('morty',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      height: 1.2,
                      fontFamily: "Courier",
                      background: Paint()..color = Colors.yellow,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dashed))
            ]),
            for (var path in images)
              Card(
                child: Container(
                  child: Image(
                    image: AssetImage(path),
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
