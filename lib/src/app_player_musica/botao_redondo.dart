import 'package:flutter/material.dart';

class BotaoRedondo extends StatefulWidget {
  final dynamic onCallback, cor, icone;

  BotaoRedondo({Key key, this.onCallback, this.cor, this.icone})
      : super(key: key);

  @override
  _BotaoRedondoState createState() => _BotaoRedondoState();
}

class _BotaoRedondoState extends State<BotaoRedondo> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: widget.onCallback,
      elevation: 2.0,
      fillColor: widget.cor,
      child: Icon(
        widget.icone,
        size: 35.0,
      ),
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(),
    );
  }
}
