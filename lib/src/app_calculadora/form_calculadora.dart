import 'package:flutter/material.dart';

class FormCalculadora extends StatefulWidget {
  @override
  _FormCalculadoraState createState() => _FormCalculadoraState();
}

class _FormCalculadoraState extends State<FormCalculadora> {
  final _formKey = GlobalKey<FormState>();
  Map<dynamic, dynamic> _formData = {};
  String _valor = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora App'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nome'),
                  keyboardType: TextInputType.text,
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Campo vazio";
                    }
                  },
                  onSaved: (value) {
                    _formData["nome"] = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Campo A'),
                  keyboardType: TextInputType.number,
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Campo vazio";
                    }
                  },
                  onSaved: (value) {
                    _formData["campo_a"] = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Campo B'),
                  keyboardType: TextInputType.number,
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Campo vazio";
                    }
                  },
                  onSaved: (value) {
                    _formData["campo_b"] = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Campo C'),
                  keyboardType: TextInputType.number,
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Campo vazio";
                    }
                  },
                  onSaved: (value) {
                    _formData["campo_c"] = value;
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Resultado:',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '$_valor',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RaisedButton(
                    child: Text('Calcular'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        String nome = _formData['nome'];
                        num campoA = num.parse(_formData['campo_a']);
                        num campoB = num.parse(_formData['campo_b']);
                        num campoC = num.parse(_formData['campo_c']);
                        num resultado = (campoB * campoC) / campoA;
                        String resultadoFormatado =
                            resultado.toStringAsFixed(2);
                        String resultadoArredondado =
                            resultado.round().toString();
                        setState(() {
                          _valor =
                              '$nome -> $campoB -> $resultadoFormatado -> $resultadoArredondado';
                          return _valor;
                        });
                      }
                    },
                  ),
                  RaisedButton(
                    child: Text('Ajuda'),
                    color: Colors.green,
                    textColor: Colors.white,
                    onPressed: () {
                      showDialog(
                          context: context,
                          child: AlertDialog(
                            title: Text('Ajuda'),
                            content: Text('''
                                A ----- B
                                C ----- X
                              '''),
                            actions: [
                              RaisedButton(
                                child: Text('Fechar'),
                                color: Colors.green,
                                textColor: Colors.white,
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          ));
                    },
                  ),
                  RaisedButton(
                    child: Text('Limpar'),
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                        _valor = "0";
                      });
                      _formKey.currentState.reset();
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
