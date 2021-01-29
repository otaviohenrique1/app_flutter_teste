import 'package:flutter/material.dart';

class AppCalculadoraFlutter extends StatefulWidget {
  @override
  _AppCalculadoraFlutterState createState() => _AppCalculadoraFlutterState();
}

class _AppCalculadoraFlutterState extends State<AppCalculadoraFlutter> {
  dynamic _valor = '0';
  List<num> _valorTela = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '$_valor',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _botao(label: '%', fontSize: 20, onCalback: () {}),
                _botao(
                    label: 'CE',
                    fontSize: 20,
                    onCalback: () {
                      setState(() {
                        _valor = '0';
                      });
                    }),
                _botao(
                    label: 'C',
                    fontSize: 20,
                    onCalback: () {
                      setState(() {
                        _valor = '0';
                      });
                    }),
                _botao(
                    label: 'DEL',
                    fontSize: 20,
                    onCalback: () {
                      setState(() {
                        _valor = '';
                      });
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _botao(label: '1/x', fontSize: 20, onCalback: () {}),
                _botao(label: 'X^2', fontSize: 20, onCalback: () {}),
                _botao(label: 'R2', fontSize: 20, onCalback: () {}),
                _botao(label: '/', fontSize: 20, onCalback: () {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _botao(
                    label: '7',
                    fontSize: 20,
                    onCalback: () {
                      setState(() {
                        _valor = '7';
                      });
                    }),
                _botao(
                    label: '8',
                    fontSize: 20,
                    onCalback: () {
                      setState(() {
                        _valor = '8';
                      });
                    }),
                _botao(
                    label: '9',
                    fontSize: 20,
                    onCalback: () {
                      setState(() {
                        _valor = '9';
                      });
                    }),
                _botao(label: '*', fontSize: 20, onCalback: () {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _botao(
                    label: '4',
                    fontSize: 20,
                    onCalback: () {
                      setState(() {
                        _valor = '4';
                      });
                    }),
                _botao(
                    label: '5',
                    fontSize: 20,
                    onCalback: () {
                      setState(() {
                        _valor = '5';
                      });
                    }),
                _botao(
                    label: '6',
                    fontSize: 20,
                    onCalback: () {
                      setState(() {
                        _valor = '6';
                      });
                    }),
                _botao(label: '-', fontSize: 20, onCalback: () {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _botao(
                    label: '1',
                    fontSize: 20,
                    onCalback: () {
                      setState(() {
                        _valorTela.add(1);
                        _valor = _valorTela;
                        // _valor = '1';
                      });
                    }),
                _botao(
                    label: '2',
                    fontSize: 20,
                    onCalback: () {
                      setState(() {
                        _valor = '2';
                      });
                    }),
                _botao(
                    label: '3',
                    fontSize: 20,
                    onCalback: () {
                      setState(() {
                        _valor = '3';
                      });
                    }),
                _botao(label: '+', fontSize: 20, onCalback: () {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _botao(label: '+/-', fontSize: 20, onCalback: () {}),
                _botao(
                    label: '0',
                    fontSize: 20,
                    onCalback: () {
                      setState(() {
                        _valor = '0';
                      });
                    }),
                _botao(label: ',', fontSize: 20, onCalback: () {}),
                _botao(label: '=', fontSize: 20, onCalback: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _botao({String label, double fontSize, dynamic onCalback}) {
    return RaisedButton(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
          ),
        ),
      ),
      onPressed: onCalback,
    );
  }
}

/*
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
*/
