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
        title: Text('Health Tracker',style:TextStyle(fontSize: 25,fontStyle: FontStyle.italic,color:Colors.red)),
        centerTitle: true,
      ),
      body:Container(
      padding: EdgeInsets.all(30),  
      child: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.blue,
            child: ListTile(
              //leading: Icon(Icons.medical_services),
              title: Text('Blood Temparture'),
              subtitle: Text('Value'),
              trailing: Icon(Icons.pie_chart),
            ),
          ),
          //SizedBox(height: 40,),
          Container(
            alignment: Alignment.center,
            color: Colors.blue,
            child: ListTile(
              //leading: Icon(Icons.medical_services),
              title: Text('Blood Pressure'),
              subtitle: Text('Value'),
              trailing: Icon(Icons.pie_chart),
            ),
          ),
          //SizedBox(height: 40,),
          Container(
            alignment: Alignment.center,
            color: Colors.blue,
            child: ListTile(
              //leading: Icon(Icons.medical_services),
              title: Text('Glucose'),
              subtitle: Text('Value'),
              trailing: Icon(Icons.pie_chart),
            ),
          ),
          //SizedBox(height: 40,),
          Container(
            alignment: Alignment.center,
            color: Colors.blue,
            child: ListTile(
              //leading: Icon(Icons.medical_services),
              title: Text('Respiration Level'),
              subtitle: Text('Value'),
              trailing: Icon(Icons.pie_chart),
            ),
          ),
          //SizedBox(height: 40,),
          Container(
            alignment: Alignment.center,
            color: Colors.blue,
            child: ListTile(
              //leading: Icon(Icons.medical_services),
              title: Text('Heart Rate'),
              subtitle: Text('Value'),
              trailing: Icon(Icons.pie_chart),
            ),
          ),
          //SizedBox(height: 40,),
          Container(
            alignment: Alignment.center,
            color: Colors.blue,
            child: ListTile(
              //leading: Icon(Icons.medical_services),
              title: Text('Oxygen Saturation'),
              subtitle: Text('Value'),
              trailing: Icon(Icons.pie_chart),
            ),
          ),
          //SizedBox(height: 40,),
          Container(
            alignment: Alignment.center,
            color: Colors.blue,
            child: ListTile(
              //leading: Icon(Icons.medical_services),
              title: Text('Cholestrol'),
              subtitle: Text('Value'),
              trailing: Icon(Icons.pie_chart),
            ),
          ),
        ],
      ),
    ),
  );  
  }
}