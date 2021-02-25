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
    return SafeArea(
      child: Scaffold( 
        appBar: AppBar(
          title: Text('Login Page'),
          backgroundColor: Colors.yellow,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    hintText: 'Your Name',
                    labelText: 'Name',
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),  
                    hintText: 'Date of Birth',
                    labelText: 'DOB',
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),  
                    hintText: 'Your Gender',
                    labelText: 'Sex',
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),  
                    hintText: 'Your Mail ID/Username',
                    labelText: 'Mail ID',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    hintText: 'Enter your password',
                     labelText: 'Password',
                  ),
                ),
                SizedBox(height: 20),
                RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      color: Colors.yellowAccent,
                      splashColor: Colors.blueAccent,
                      child:Text('Submit',style: TextStyle(color:Colors.red)),
                      onPressed: () => {
                        Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => Submitpage())),
                      },
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Submitpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Submitted Successfully',style: TextStyle(color: Colors.orangeAccent,fontSize: 20)),
          SizedBox(height: 20),
          RaisedButton(onPressed: () => {
            Navigator.pop(context),
          },
          child: Text('Back'),
          ),
        ],
      ),
      color: Colors.white,
    );
  }
}
