import 'package:app_flutter_teste/src/app_player_musica/player_musica_item.dart';
import 'package:flutter/material.dart';

class ListaMusica extends StatefulWidget {
  @override
  _ListaMusicaState createState() => _ListaMusicaState();
}

class _ListaMusicaState extends State<ListaMusica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Player Musica'),
      ),
      body: Container(
        child: ListView(
          children: List.generate(10, (index) {
            return PlayerMusicaItem();
          }),
        ),
      ),
    );
  }
}
