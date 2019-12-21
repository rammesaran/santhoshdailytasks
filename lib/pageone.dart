import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  final String second;
  FirstPage({this.second});
  @override
  _FirstPageState createState() => _FirstPageState(second: second);
}

class _FirstPageState extends State<FirstPage> {
  String second;

  _FirstPageState({this.second});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(this.second.toString()),
      ),
    );
  }
}
