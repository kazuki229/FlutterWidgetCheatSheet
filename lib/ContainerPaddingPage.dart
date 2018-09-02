import 'package:flutter/material.dart';

class ContainerPaddingPage extends StatefulWidget {
  @override
  ContainerPaddingPageState createState() => ContainerPaddingPageState();
}

class ContainerPaddingPageState extends State<ContainerPaddingPage> {
  EdgeInsets padding = const EdgeInsets.all(16.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container padding"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: padding,
            alignment: Alignment.center,
            color: Colors.blueGrey,
            child: Container(
              color: Colors.green,
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            left: 0.0,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                        child: Text('all'),
                        onPressed: () {
                          setState(() {
                            padding = const EdgeInsets.all(16.0);
                          });
                        },
                      ),
                      RaisedButton(
                        child: Text('symmetric'),
                        onPressed: () {
                          setState(() {
                            padding =
                                const EdgeInsets.symmetric(vertical: 32.0);
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                        child: Text('only'),
                        onPressed: () {
                          setState(() {
                            padding = const EdgeInsets.only(
                              left: 16.0,
                            );
                          });
                        },
                      ),
                      RaisedButton(
                        child: Text('fromLTRB'),
                        onPressed: () {
                          setState(() {
                            padding = const EdgeInsets.fromLTRB(
                                8.0, 16.0, 24.0, 32.0);
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
