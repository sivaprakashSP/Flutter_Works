import 'package:flutter/material.dart';

class Datascreen extends StatefulWidget {
  @override
  _DatascreenState createState() => _DatascreenState();
}

class _DatascreenState extends State<Datascreen> {

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text("Physical health"),
        ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Height'),
              ),
              SizedBox(height:20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Weight'),
              ),
              SizedBox(height:20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Body Temparture'),
              ),
              SizedBox(height:20),
              RaisedButton(
                child:Text(
                  'Submit',
                  style: TextStyle(color:Colors.white),
                ),
                onPressed: () => {},
              ),
            ],
          ),
      ),
    ),
    );
  }
}