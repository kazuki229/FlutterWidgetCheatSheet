import 'package:flutter/material.dart';

class ContainerAlignmentPage extends StatefulWidget {
  @override
  ContainerAlignmentPageState createState() => ContainerAlignmentPageState();
}

class ContainerAlignmentPageState extends State<ContainerAlignmentPage> {
  Alignment alignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container padding"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            alignment: alignment,
            color: Colors.blueGrey,
            child: Container(
              height: 100.0,
              width: 100.0,
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
                            'topLeft',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              alignment = Alignment.topLeft;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          child: Text(
                            'topCenter',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              alignment = Alignment.topCenter;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          child: Text(
                            'topRight',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              alignment = Alignment.topRight;
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
                            'centerLeft',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              alignment = Alignment.centerLeft;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          child: Text(
                            'center',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              alignment = Alignment.center;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          child: Text(
                            'centerRight',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              alignment = Alignment.centerRight;
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
                            'bottomLeft',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              alignment = Alignment.bottomLeft;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          child: Text(
                            'bottomCenter',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              alignment = Alignment.bottomCenter;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RaisedButton(
                          child: Text(
                            'bottomRight',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              alignment = Alignment.bottomRight;
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
