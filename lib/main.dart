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
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('container'),
              onTap: () {
                Navigator.push<MaterialPageRoute<dynamic>>(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ContainerPage(),
                  ),
                );
              },
            ),
          ],
        ),
      );
}
