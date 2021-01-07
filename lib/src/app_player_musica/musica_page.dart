import 'package:flutter/material.dart';
import 'botao_redondo.dart';

class MusicaPage extends StatefulWidget {
  @override
  _MusicaPageState createState() => _MusicaPageState();
}

class _MusicaPageState extends State<MusicaPage> {
  bool valor = true;
  dynamic iconeBotao = Icons.play_arrow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Player Musica'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Column(
              children: [
                Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/2005-bandipur-tusker.jpg/240px-2005-bandipur-tusker.jpg'),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Artista:',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Elefante',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Album:',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Elefante',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Musica:',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'Elefante',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      LinearProgressIndicator(
                        minHeight: 5,
                        // value: 1,
                        // backgroundColor: Colors.amber,
                        // valueColor:
                        //     new AlwaysStoppedAnimation<Color>(Colors.red),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '00:00',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              '05:00',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BotaoRedondo(
              onCallback: () {},
              cor: Colors.lightBlue,
              icone: Icons.skip_previous,
            ),
            BotaoRedondo(
              onCallback: () {
                setState(() {
                  (valor) ? valor = false : valor = true;
                });
              },
              cor: Colors.lightBlue,
              icone: (valor == true) ? Icons.pause : Icons.play_arrow,
            ),
            BotaoRedondo(
              onCallback: () {},
              cor: Colors.lightBlue,
              icone: Icons.skip_next,
            ),
          ],
        ),
      ),
    );
  }
}
