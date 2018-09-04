import 'package:flutter/material.dart';
import 'package:flutter_widget_cheatsheet/Container/ContainerAlignmentPage.dart';
import 'package:flutter_widget_cheatsheet/Container/ContainerConstraintsExpand.dart';
import 'package:flutter_widget_cheatsheet/Container/ContainerConstraintsPage.dart';
import 'package:flutter_widget_cheatsheet/Container/ContainerMarginPage.dart';
import 'package:flutter_widget_cheatsheet/Container/ContainerPaddingPage.dart';

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
                Navigator.push<MaterialPageRoute<ContainerPaddingPage>>(
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
                Navigator.push<MaterialPageRoute<ContainerAlignmentPage>>(
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
                Navigator.push<MaterialPageRoute<ContainerMarginPage>>(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ContainerMarginPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('constraints'),
              onTap: () {
                Navigator.push<MaterialPageRoute<ContainerConstraintsPage>>(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ContainerConstraintsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('constraints expand'),
              onTap: () {
                Navigator.push<
                    MaterialPageRoute<ContainerConstraintsExpandPage>>(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ContainerConstraintsExpandPage(),
                  ),
                );
              },
            ),
          ],
        ),
      );
}
