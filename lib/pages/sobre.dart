import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Row(
            children: [
              Icon(Icons.copyright),
              Text('Copyright Otavio Henrique'),
            ],
          ),
        ),
      ),
    );
  }
}
