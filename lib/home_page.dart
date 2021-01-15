import 'package:app_flutter_teste/src/app_calculadora/form_calculadora.dart';
import 'package:app_flutter_teste/src/app_calculadora_flutter.dart';
import 'package:app_flutter_teste/src/app_player_musica/lista_musica.dart';
import 'package:app_flutter_teste/src/linear_progress_indicator_exemplo.dart';
import 'package:flutter/material.dart';
import 'package:app_flutter_teste/pages/home.dart';
import 'package:app_flutter_teste/src/drawer_exemplo.dart';
import 'package:app_flutter_teste/src/gridview_list.dart';
import 'package:app_flutter_teste/src/orientation_form.dart';
import 'package:app_flutter_teste/src/orientation_list.dart';
import 'package:app_flutter_teste/src/titulo.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: OrientationBuilder(
            builder: (context, orientation) {
              return ListView(
                children: <Widget>[
                  Titulo(
                    texto: 'Teste',
                  ),
                  RaisedButton(
                    child: Text('OrientationList'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrientationList(
                              title: 'OrientationList',
                            ),
                          ));
                    },
                  ),
                  RaisedButton(
                    child: Text('OrientationForm'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrientationForm(),
                          ));
                    },
                  ),
                  RaisedButton(
                    child: Text('GridViewList'),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GridViewList(),
                        )),
                  ),
                  RaisedButton(
                    child: Text('DrawerExemplo'),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DrawerExemplo(),
                        )),
                  ),
                  RaisedButton(
                    child: Text('Lista de Veiculos'),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        )),
                  ),
                  RaisedButton(
                    child: Text('Player Musica'),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ListaMusica(),
                        )),
                  ),
                  RaisedButton(
                    child: Text('LinearProgressIndicator'),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              LinearProgressIndicatorExemplo(),
                        )),
                  ),
                  RaisedButton(
                    child: Text('Calcula medida'),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormCalculadora(),
                        )),
                  ),
                  RaisedButton(
                    child: Text('Calculadora'),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AppCalculadoraFlutter(),
                        )),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
