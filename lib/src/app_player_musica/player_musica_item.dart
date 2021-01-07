import 'package:flutter/material.dart';
import 'package:app_flutter_teste/src/app_player_musica/musica_page.dart';

class PlayerMusicaItem extends StatefulWidget {
  @override
  _PlayerMusicaItemState createState() => _PlayerMusicaItemState();
}

class _PlayerMusicaItemState extends State<PlayerMusicaItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1),
              left: BorderSide(width: 1),
              right: BorderSide(width: 1),
              top: BorderSide(width: 1)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1),
                        left: BorderSide(width: 1),
                        right: BorderSide(width: 1),
                        top: BorderSide(width: 1)),
                  ),
                  margin: EdgeInsets.only(right: 15),
                  width: 100,
                  height: 100,
                  child: Row(
                    children: [
                      Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/2005-bandipur-tusker.jpg/240px-2005-bandipur-tusker.jpg'),
                    ],
                  ),
                ),
                Text(
                  'Elefante',
                  style: TextStyle(fontSize: 40),
                )
              ],
            ),
            RawMaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MusicaPage(),
                    ));
              },
              elevation: 2.0,
              fillColor: Colors.lightBlue,
              child: Icon(
                Icons.play_arrow,
                size: 35.0,
              ),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            ),
          ],
        ),
      ),
    );
  }
}
