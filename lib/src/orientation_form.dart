import 'package:flutter/material.dart';

class OrientationForm extends StatefulWidget {
  @override
  _OrientationFormState createState() => _OrientationFormState();
}

class _OrientationFormState extends State<OrientationForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OrientationForm')),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Form(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ListView(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nome',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Sobrenome',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'CPF',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'RG',
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Data de nascimento',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RaisedButton(
                          child: Text('Salvar'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        RaisedButton(
                          child: Text('Limpar'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
