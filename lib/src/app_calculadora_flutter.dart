import 'package:flutter/material.dart';

class AppCalculadoraFlutter extends StatefulWidget {
  @override
  _AppCalculadoraFlutterState createState() => _AppCalculadoraFlutterState();
}

class _AppCalculadoraFlutterState extends State<AppCalculadoraFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: List.generate(24, (index) {
          return Center(
            child: RaisedButton(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  '$index',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              onPressed: () {},
            ),
          );
        }),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '10',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
