import 'package:app_flutter_teste/pages/components/botao.dart';
import 'package:app_flutter_teste/pages/components/campo.dart';
import 'package:flutter/material.dart';

class FormTemplate extends StatefulWidget {
  @override
  _FormTemplateState createState() => _FormTemplateState();
}

class _FormTemplateState extends State<FormTemplate> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Campo(),
        Campo(),
        Campo(),
        Campo(),
        Campo(),
        Campo(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Botao(),
            Botao(),
          ],
        )
      ],
    );
  }
}
