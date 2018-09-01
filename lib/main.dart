import 'package:flutter/material.dart';
import 'package:flutter_widget_cheatsheet/ContainerPage.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('container'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContainerPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
