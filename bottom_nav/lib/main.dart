import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottondemo(),
    );
  }
}

class Bottondemo extends StatefulWidget {
  @override
  _BottondemoState createState() => _BottondemoState();
}

class _BottondemoState extends State<Bottondemo> {
  int start=0;
  var views=[
    Container(
        alignment: Alignment.center,
        child: Text("Personal deatils are here in this page",style: TextStyle(fontSize: 20)),
        //color: Colors.blue,
      ),
    Container(
        alignment: Alignment.center,
        child: Text("Thank You !!!",style: TextStyle(fontSize: 20)),
        //color: Colors.blue,
      ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      bottomNavigationBar:BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label:"My Details"),
          BottomNavigationBarItem(icon: Icon(Icons.exit_to_app), label:"Sign out"),
        ],
        currentIndex: start,
        onTap: (index){
          setState(() {
            start = index;            
          });
        },
        backgroundColor: Colors.white60,
        selectedItemColor: Colors.redAccent,
        ),
        body: views[start],
      );
  }
}