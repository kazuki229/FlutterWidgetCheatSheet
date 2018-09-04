import 'package:flutter/material.dart';

class ContainerPaddingPage extends StatefulWidget {
  @override
  _ContainerPaddingPageState createState() => _ContainerPaddingPageState();
}

class _ContainerPaddingPageState extends State<ContainerPaddingPage> {
  EdgeInsets _padding = const EdgeInsets.all(16.0);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Container padding'),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              padding: _padding,
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
                          child: const Text('all'),
                          onPressed: () {
                            setState(() {
                              _padding = const EdgeInsets.all(16.0);
                            });
                          },
                        ),
                        RaisedButton(
                          child: const Text('symmetric'),
                          onPressed: () {
                            setState(() {
                              _padding =
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
                          child: const Text('only'),
                          onPressed: () {
                            setState(() {
                              _padding = const EdgeInsets.only(
                                left: 16.0,
                              );
                            });
                          },
                        ),
                        RaisedButton(
                          child: const Text('fromLTRB'),
                          onPressed: () {
                            setState(() {
                              _padding = const EdgeInsets.fromLTRB(
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
