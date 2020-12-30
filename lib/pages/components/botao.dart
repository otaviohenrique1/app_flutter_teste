import 'package:flutter/material.dart';

class Botao extends StatefulWidget {
  final dynamic labelText, fontSize, colorButton, textColor, padding, onCalback;

  Botao(
      {Key key,
      this.labelText,
      this.fontSize,
      this.colorButton,
      this.textColor,
      this.padding,
      this.onCalback})
      : super(key: key);

  @override
  _BotaoState createState() => _BotaoState();
}

class _BotaoState extends State<Botao> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        widget.labelText,
        style: TextStyle(
          fontSize: widget.fontSize,
        ),
      ),
      color: widget.colorButton,
      textColor: widget.textColor,
      padding: widget.padding,
      onPressed: widget.onCalback,
    );
  }
}
