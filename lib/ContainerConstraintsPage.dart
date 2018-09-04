import 'package:flutter/material.dart';

class ContainerConstraintsPage extends StatefulWidget {
  @override
  _ContainerConstraintsPageState createState() =>
      _ContainerConstraintsPageState();
}

class _ContainerConstraintsPageState extends State<ContainerConstraintsPage> {
  double _sliderValue = 100.0;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Container boxconstraints'),
        ),
        body: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 32.0,
              child: Column(
                children: <Widget>[
                  Text(
                      'minWidth = 100.0\nminHeight = 100.0\nmaxWidth = 300.0\nmaxHeight = 300.0\nchild size $_sliderValue'),
                  Slider(
                    value: _sliderValue,
                    min: 0.0,
                    max: 400.0,
                    onChanged: (double value) {
                      setState(() {
                        _sliderValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                constraints: const BoxConstraints(
                  minWidth: 100.0,
                  minHeight: 100.0,
                  maxWidth: 300.0,
                  maxHeight: 300.0,
                ),
                padding: const EdgeInsets.all(8.0),
                color: Colors.blueGrey,
                child: Container(
                  height: _sliderValue,
                  width: _sliderValue,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      );
}
