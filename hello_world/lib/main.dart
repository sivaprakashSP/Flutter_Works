import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application. 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(icon:Icon(Icons.person), title:Text('Health Parameter')),
          BottomNavigationBarItem(icon:Icon(Icons.ac_unit), title:Text('Manual Data')),

        ]
      ),
    );
  }
}
