import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Scaffold Widget

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child:Text('+'),
      ),
      drawer: Drawer(
        child: Text('Menus'),
      ),
      appBar: AppBar(
        centerTitle: true,
        title:Text('Mobile App'),
      ),
      body:Container(
        child: Center(
          child:Text("Hello Aliens"),
        )
      ),
    );

  }
}


//Container Widget
/*
class App extends StatelessWidget{
  @override
  Widget build(BuildContext conetext){
    return MaterialApp(
      home:SafeArea(
        child:Scaffold(
        body:Container(
          //width: 300,
          //height: 300,
          //padding: EdgeInsets.all(30),
          color:Colors.blue,
          alignment: Alignment.center,
          child: Text("Hello Guys",style: TextStyle(fontSize: 30)),
        ),
      ),
      ), 
    );
  }
}
*/

