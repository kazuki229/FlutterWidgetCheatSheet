import 'package:flutter/material.dart';
import 'package:flutter_widget_cheatsheet/ContainerMarginPage.dart';
import 'package:flutter_widget_cheatsheet/ContainerPaddingPage.dart';
import 'package:flutter_widget_cheatsheet/ContainerAlignmentPage.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Container'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('padding'),
              onTap: () {
                Navigator.push<MaterialPageRoute<dynamic>>(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ContainerPaddingPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('alignment'),
              onTap: () {
                Navigator.push<MaterialPageRoute<dynamic>>(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ContainerAlignmentPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('margin'),
              onTap: () {
                Navigator.push<MaterialPageRoute<dynamic>>(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ContainerMarginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      );
}
