import 'package:flutter/material.dart';
import 'package:app_flutter_teste/pages/components/drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de veiculos'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bem Vindo',
              style: Theme.of(context).textTheme.headline1,
            )
          ],
        ),
      ),
      drawer: DrawerApp(),
    );
  }
}
