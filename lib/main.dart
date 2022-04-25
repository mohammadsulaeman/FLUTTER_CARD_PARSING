import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Card & Parsing",
      home: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Dan Parsing Data"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CardSaya(icon: Icons.home,teks: "Home",warnaIcons: Colors.red,),
            CardSaya(icon: Icons.zoom_in_rounded,teks: "Zoom",warnaIcons: Colors.blue,),
            CardSaya(icon: Icons.access_alarm,teks: "Alarm",warnaIcons: Colors.lightBlueAccent,),
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
  CardSaya({ this.icon, this.teks,this.warnaIcons });
  final IconData? icon;
  final String? teks;
  final Color? warnaIcons;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(10.0),
      child: Card(
              child: Column(
                children: [
                  Icon(
                  icon, 
                  size: 60.0, 
                  color:warnaIcons ,),
                 Text(
                   teks!,
                   style: TextStyle(fontSize: 20.0),
                 )
                ],
              ),
            ),
    );
  }
}
