import 'package:flutter/material.dart';

class ContainerMarginPage extends StatefulWidget {
  @override
  _ContainerMarginPageState createState() => _ContainerMarginPageState();
}

class _ContainerMarginPageState extends State<ContainerMarginPage> {
  EdgeInsets _margin = const EdgeInsets.all(16.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container margin"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16.0),
            margin: _margin,
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
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 120.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          child: Text(
                            'all',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              _margin = const EdgeInsets.all(16.0);
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          child: Text(
                            'symmetric',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              _margin =
                                  const EdgeInsets.symmetric(vertical: 32.0);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          child: Text(
                            'only',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              _margin = const EdgeInsets.only(
                                left: 16.0,
                              );
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          child: Text(
                            'fromLTRB',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              _margin = const EdgeInsets.fromLTRB(
                                  8.0, 16.0, 24.0, 32.0);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
