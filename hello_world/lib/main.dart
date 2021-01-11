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
  var views=[
        Padding(
            padding: const EdgeInsets.all(20.0),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                child:Text(
                  'Body Temparture',
                  style:TextStyle(fontSize: 20),
                ),
                height: 90,
                width: 200,
                color: Colors.blue,
              ),
              Container(
                child:Text(
                  'Blood Pressure',
                  style:TextStyle(fontSize: 20),
                ),
                height: 90,
                width: 200,
                color: Colors.blue,
              ),
              Container(
                child:Text(
                  'Respiration',
                  style:TextStyle(fontSize: 20),
                ),
                height: 90,
                width: 200,
                color: Colors.blue,
              ),
              Container(
                child:Text(
                  'Glucose',
                  style:TextStyle(fontSize: 20),
                ),
                height: 90,
                width: 200,
                color: Colors.blue,
              ),
              Container(
                child:Text(
                  'Heart Rate',
                  style:TextStyle(fontSize: 20),
                ),
                height: 90,
                width: 200,
                color: Colors.blue,
              ),
              Container(
                child:Text(
                  'Oxygen Saturation',
                  style:TextStyle(fontSize: 20),
                ),
                height: 90,
                width: 200,
                color: Colors.blue,
              ),
              Container(
                child:Text(
                  'Cholestrol',
                  style:TextStyle(fontSize: 20),
                ),
                height: 90,
                width: 200,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      Container(
        alignment: Alignment.center,
        child: Text('Enter the Manual Data'),
      )
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Health Tracker',style:TextStyle(fontSize: 25)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(icon:Icon(Icons.person), label:('Health Parameter')),
          BottomNavigationBarItem(icon:Icon(Icons.data_usage), label:('Manual Data')),
        ],
        selectedItemColor: Colors.blueAccent,
        currentIndex: start,
        onTap: (index){
        setState(() {
          start=index;
        });
        },
      ),
      body:views[start],
    );
  }
}
