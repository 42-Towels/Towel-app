import 'package:flutter/material.dart';
import 'TowelStyles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String _title = 'Towels';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Towel(title: _title),
    );
  }
}

class Towel extends StatefulWidget {
  const Towel({
    Key key,
    @required String title,
  })  : _title = title,
        super(key: key);

  final String _title;

  @override
  _TowelState createState() => _TowelState();
}

class _TowelState extends State<Towel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget._title),
        // TODO implement search bar
      ),
      body: Container(
        child: Card(
          child: Column(
            children: <Widget>[
              Text(
                'Git TITLE',
                style: TowelStyles.gitTitleTextStyle,
              ),
              Text(
                'Git Description',
                style: TowelStyles.gitDescTextStyle,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        tooltip: 'Add new item',
        child: const Icon(Icons.add),
      ),
    );
  }
}
