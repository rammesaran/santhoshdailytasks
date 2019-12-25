import 'package:flutter/material.dart';
import 'package:santhoshtasks/model/playermodel.dart';
import 'package:santhoshtasks/pageone.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<PlayerMode> players = [
    PlayerMode(
      name: "sachin",
      image:
          "https://c.ndtvimg.com/2019-07/u16tdj8s_sachin-tendulkar-icc-twitter_625x300_19_July_19.jpg?output-quality=70&output-format=webp&downsize=555:*",
      rank: 1,
      nation: "india",
      matchodi: 25,
      matchtest: 50,
      summery: "hai this is sachin",
    ),
    PlayerMode(
      name: "dravid",
      image: "https://s.ndtvimg.com/images/entities/120/rahul-dravid-174.jpg",
      rank: 2,
      nation: "india",
      matchodi: 50,
      matchtest: 100,
      summery: "hai this is dravid",
    ),
    PlayerMode(
      name: "dhoni",
      image:
          "https://img.etimg.com/thumb/msid-61166425,width-300,imgsize-126503,resizemode-4/why-after-13-years-mahendra-singh-dhoni-is-still-not-out.jpg",
      rank: 3,
      nation: "india",
      matchodi: 100,
      matchtest: 100,
      summery: "hai this is dhoni",
    ),
    PlayerMode(
        name: "raina",
        image: "https://www.mykhel.com/img/2018/10/raina-1538638720.jpg",
        rank: 4,
        nation: "india",
        matchodi: 65,
        matchtest: 100,
        summery: "hai this is raina"),
  ];

  //PlayerMode playerMode = PlayerMode();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) => Divider(
                  thickness: 2.0,
                ),
                itemCount: players.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50.0,
                    color: Colors.blue,
                    child: ListTile(
                        leading: GestureDetector(
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            alignment: Alignment.center,
                            child: CircleAvatar(
                              child: Icon(
                                Icons.person,
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                        title: Text(players[index].name),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PlayerList(
                                name: players[index].name,
                                images: players[index].image,
                                matchodi: players[index].matchodi,
                                matchtest: players[index].matchtest,
                                nation: players[index].nation,
                                rank: players[index].rank,
                                summery: players[index].summery,
                              ),
                            ),
                          );
                        }),
                  );
                },
                padding: EdgeInsets.all(10.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
