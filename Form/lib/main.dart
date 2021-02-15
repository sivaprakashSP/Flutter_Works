import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Registerpage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Registerpage extends StatefulWidget {
  @override
  _RegisterpageState createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: Form(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
              hintText: 'Your Name',
              labelText: 'Name',
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
              decoration: const InputDecoration(
              hintText: 'Date of Birth',
              labelText: 'DOB',
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
              decoration: const InputDecoration(
              hintText: 'Your Gender',
              labelText: 'Sex',
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
              decoration: const InputDecoration(
              hintText: 'Your Mail ID/Username',
              labelText: 'Mail ID',
            ),
          ),
          SizedBox(height: 20),
          RaisedButton(
                color: Colors.yellowAccent,
                splashColor: Colors.blueAccent,
                child:Text('Submit',style: TextStyle(color:Colors.red)),
                onPressed: () => {},
              ),
          ],
        ),
      ),
    );
  }
}