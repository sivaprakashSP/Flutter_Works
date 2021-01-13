import 'package:flutter/material.dart';
import './manualdata.dart';
import './parameter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application. 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue,
    ),
      home: Scaffold(
        body: MyHomePage(),
        ),
        debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override

  _MyAppState createState()=>_MyAppState();
}

class _MyAppState extends State<MyHomePage>{
  int start=0;
  final List _children = [
  Healthparam(),
  Datascreen(),
];

    void onTappedBar(int index)
    {
        setState(() {
          start=index;
        });
    }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:_children[start],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex : start,
        items:[
          BottomNavigationBarItem(
            icon:Icon(Icons.person), 
            label:('Health Parameter'),
            ),
          BottomNavigationBarItem(
            icon:Icon(Icons.data_usage), 
            label:('Manual Data'),
            ),
        ],
        selectedItemColor: Colors.white,
        onTap: onTappedBar,
      ),
    );
    
  }
}
