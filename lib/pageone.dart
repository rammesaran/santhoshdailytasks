import 'package:flutter/material.dart';

class Players extends StatefulWidget {
  final String name;
  final String images;
  final String ranks;
  final String nation;
  final String odi;
  final String test;
  final String summer;
  Players(
      {this.name,
      this.images,
      this.ranks,
      this.nation,
      this.odi,
      this.summer,
      this.test});
  @override
  _PlayersState createState() => _PlayersState(
      playersname: name,
      playersimage: images,
      playersrank: ranks,
      playernation: nation,
      playerodi: odi,
      playersummer: summer,
      playertest: test);
}

class _PlayersState extends State<Players> {
  String playersname;
  String playersimage;
  String playersrank;
  String playernation;
  String playerodi;
  String playertest;
  String playersummer;

  _PlayersState(
      {this.playersimage,
      this.playersname,
      this.playersrank,
      this.playernation,
      this.playerodi,
      this.playersummer,
      this.playertest});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(playersname),
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
              image: NetworkImage(playersimage),
            ),
            Text(
              playersname,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              playersrank,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              playernation,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              playerodi,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              playertest,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              playersummer,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
