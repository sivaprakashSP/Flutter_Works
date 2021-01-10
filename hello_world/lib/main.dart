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

class MyHomePage extends StatefulWidget{
  @override

  _MyAppState createState()=>_MyAppState();
}

class _MyAppState extends State<MyHomePage>{
  int start=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(icon:Icon(Icons.person), label:('Health Parameter')),
          BottomNavigationBarItem(icon:Icon(Icons.data_usage), label:('Manual Data')),
           BottomNavigationBarItem(icon:Icon(Icons.exit_to_app), label:('Quit')),
        ],
        selectedItemColor: Colors.yellow,
        currentIndex: start,
        onTap: (index){
        setState(() {
          start=index;
        });
        },
      ),
    );
  }
}
