import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:towels/customIcons/git_icons.dart';
import 'Widgets/GitCardList.dart';
import 'Widgets/GitCard.dart';
import 'Styles/TowelStyles.dart';


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
        backgroundColor: Colors.transparent,
        title: searchBar(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
        ),
        toolbarOpacity: 0,
        bottomOpacity: 0,
        elevation: 0,
      ),
      body: GitCardList(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        tooltip: 'Add new item',
        child: const Icon(Icons.add),
      ),
    );
  }

  TextField searchBar() {
    return TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Search for git repositories',
        hintStyle: TextStyle(fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            width: 2,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(0),
        fillColor: Colors.grey[500]
      ),

    );
  }
}
