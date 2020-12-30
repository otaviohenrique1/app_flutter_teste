import 'package:flutter/material.dart';

class DrawerApp extends StatefulWidget {
  @override
  _DrawerAppState createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          TextButton(
            child: Text('Cadastro'),
            onPressed: () {},
          ),
          TextButton(
            child: Text('Lista'),
            onPressed: () {},
          ),
          TextButton(
            child: Text('Sobre'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
