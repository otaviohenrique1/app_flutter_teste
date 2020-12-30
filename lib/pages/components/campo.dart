import 'package:flutter/material.dart';

class Campo extends StatefulWidget {
  final dynamic padding,
      controller,
      initialValue,
      keyboardType,
      labelText,
      fontSize,
      focusNode,
      mensagem,
      onCalback;

  Campo(
      {Key key,
      this.padding,
      this.controller,
      this.initialValue,
      this.keyboardType,
      this.labelText,
      this.fontSize,
      this.focusNode,
      this.mensagem,
      this.onCalback})
      : super(key: key);

  @override
  _CampoState createState() => _CampoState();
}

class _CampoState extends State<Campo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: TextFormField(
        initialValue: widget.initialValue,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(labelText: widget.labelText),
        controller: widget.controller,
        focusNode: widget.focusNode,
        style: TextStyle(
          fontSize: widget.fontSize,
        ),
        // ignore: missing_return
        validator: (value) {
          if (value.isEmpty) {
            return widget.mensagem;
          }
        },
        onSaved: widget.onCalback,
      ),
    );
  }
}
