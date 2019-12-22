import 'package:flutter/material.dart';
import 'package:santhoshtasks/model/playermodel.dart';
import 'package:santhoshtasks/pageone.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<PlayerMode> playermode = List<PlayerMode>();
  final List<String> players = ["Sachin", "Dravid", "Dhoni", "Raina"];
  final List<String> images = [
    "https://c.ndtvimg.com/2019-07/u16tdj8s_sachin-tendulkar-icc-twitter_625x300_19_July_19.jpg?output-quality=70&output-format=webp&downsize=555:*",
    "https://s.ndtvimg.com/images/entities/120/rahul-dravid-174.jpg",
    "https://img.etimg.com/thumb/msid-61166425,width-300,imgsize-126503,resizemode-4/why-after-13-years-mahendra-singh-dhoni-is-still-not-out.jpg",
    "https://www.mykhel.com/img/2018/10/raina-1538638720.jpg"
  ];
  final List<int> ranks = [1, 2, 3, 4];
  final List<String> nations = ['india', 'india', 'india', 'india'];
  final List<int> odis = [10330, 2323, 6565, 9898];
  final List<int> tests = [989, 4545, 1212, 2121];
  final List<String> matchsummerys = [
    'hai i am sachin',
    'hai i am dravid',
    'hai i am dhoni',
    'hai i am raina'
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
                        title: Text(players[index]),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Players(
                                  name: players[index].toString(),
                                  images: images[index].toString(),
                                  ranks: ranks[index].toString(),
                                  nation: nations[index].toString(),
                                  odi: odis[index].toString(),
                                  test: tests[index].toString(),
                                  summer: matchsummerys[index].toString(),
                                ),
                              ));
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
