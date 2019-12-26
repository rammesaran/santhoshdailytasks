import 'package:flutter/material.dart';
import 'package:santhoshtasks/model/playermodel.dart';

class PlayerList extends StatelessWidget {
  final PlayerMode playerlist;
  PlayerList({this.playerlist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(playerlist.name.toString()),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text(
              "OverView",
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Image(
              image: NetworkImage(playerlist.image),
            ),
            Text(
              playerlist.name.toString(),
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              playerlist.rank.toString(),
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              playerlist.nation,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              playerlist.matchodi.toString(),
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              playerlist.matchtest.toString(),
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              playerlist.summery,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
