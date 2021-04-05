import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Topbar(),
      );
  }
}

class Topbar extends StatefulWidget {
  @override
  _TopbarState createState() => _TopbarState();
}

class _TopbarState extends State<Topbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
            title: Text("Personal Details",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20)),
            actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ],
        leading: Builder(
        builder: (BuildContext context) {
        return IconButton(
        icon: Icon(Icons.menu),
        onPressed: () => {setState(() {
                Drawer(
                  child: ListView(
                  padding: EdgeInsets.all(8.0),
                  children: [
                  ListTile(
                   title: Text("Primary Info"),
                 ),
                  ListTile(
                    title: Text("Secondary Info"),
                ),
           ],
      ),
  );
                }),
  },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  ),
  ),
);
}
}