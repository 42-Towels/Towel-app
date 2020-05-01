import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  final String _title = 'Towel';
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Center(
      child: Text(_title)
      ),
    );
  }
}