import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  final String texto;

  Titulo({Key key, this.texto});

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
