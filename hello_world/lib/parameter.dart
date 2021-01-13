import 'package:flutter/material.dart';

class Healthparam extends StatefulWidget {
  @override
  _HealthparamState createState() => _HealthparamState();
}

class _HealthparamState extends State<Healthparam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Health Tracker',style:TextStyle(fontSize: 25)),
      ),
      body:Container(
      padding: EdgeInsets.all(30),  
      child: ListView(
        children: [
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(Icons.medical_services),
              title: Text('Blood Temparture'),
              subtitle: Text('Value'),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(Icons.medical_services),
              title: Text('Blood Pressure'),
              subtitle: Text('Value'),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(Icons.medical_services),
              title: Text('Glucose'),
              subtitle: Text('Value'),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(Icons.medical_services),
              title: Text('Respiration Level'),
              subtitle: Text('Value'),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(Icons.medical_services),
              title: Text('Heart Rate'),
              subtitle: Text('Value'),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(Icons.medical_services),
              title: Text('Oxygen Saturation'),
              subtitle: Text('Value'),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(Icons.medical_services),
              title: Text('Cholestrol'),
              subtitle: Text('Value'),
            ),
          ),
        ],
      ),
    ),
  );
    
  }
}