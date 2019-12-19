import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var list = [
    'cat',
    'dog',
    'bulb',
    'code',
    'Goat',
    'elephat',
    'mouse',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'santhoshTask',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Santhosh Task'),
        ),
        body: Center(
          child: Container(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(list[index]),
                  leading: Icon(Icons.person),
                );
              },
              itemCount: list.length,
            ),
          ),
        ),
      ),
    );
  }
}
