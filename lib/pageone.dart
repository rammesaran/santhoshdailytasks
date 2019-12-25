import 'package:flutter/material.dart';

class PlayerList extends StatelessWidget {
  final String name;
  final String images;
  final int rank;
  final String nation;
  final int matchodi;
  final int matchtest;
  final String summery;
  PlayerList(
      {this.name,
      this.images,
      this.matchodi,
      this.matchtest,
      this.nation,
      this.rank,
      this.summery});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
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
              image: NetworkImage(images),
            ),
            Text(
              name,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              rank.toString(),
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              nation,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              matchodi.toString(),
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              matchtest.toString(),
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              summery,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
