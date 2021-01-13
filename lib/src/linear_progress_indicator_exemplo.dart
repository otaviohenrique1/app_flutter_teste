import 'dart:async';
import 'package:flutter/material.dart';

class LinearProgressIndicatorExemplo extends StatefulWidget {
  @override
  _LinearProgressIndicatorExemploState createState() =>
      _LinearProgressIndicatorExemploState();
}

class _LinearProgressIndicatorExemploState
    extends State<LinearProgressIndicatorExemplo> {
  double _progress = 0;

  void startTimer() {
    new Timer.periodic(
      Duration(seconds: 5),
      (Timer timer) => setState(
        () {
          if (_progress == 1) {
            timer.cancel();
          } else {
            _progress += 0.01;
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LinearProgressIndicator'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LinearProgressIndicator(
                backgroundColor: Colors.cyanAccent,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                value: _progress,
              ),
              RaisedButton(
                child: Text('Start timer'),
                onPressed: () {
                  setState(() {
                    _progress = 0;
                  });
                  startTimer();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
