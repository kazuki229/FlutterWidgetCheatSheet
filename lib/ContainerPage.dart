import 'package:flutter/material.dart';
import 'package:flutter_widget_cheatsheet/ContainerMarginPage.dart';
import 'package:flutter_widget_cheatsheet/ContainerPaddingPage.dart';
import 'package:flutter_widget_cheatsheet/ContainerAlignmentPage.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('padding'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContainerPaddingPage()),
              );
            },
          ),
          ListTile(
            title: Text('alignment'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ContainerAlignmentPage()),
              );
            },
          ),
          ListTile(
            title: Text('margin'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContainerMarginPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
