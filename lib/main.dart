import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:towels/customIcons/git_icons.dart';
import 'Widgets/GitCardList.dart';
import 'Widgets/GitCard.dart';
import 'Styles/TowelStyles.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';


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
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(32)),
        ),
        toolbarOpacity: 1,
        bottomOpacity: 0,
        elevation: 0,
      ),
      body: GitCardList(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          // TODO implement adding element to the list
          print("Adding element");
        },
        tooltip: 'Make a new item',
        child: const Icon(GitIcons.towel),
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
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(0),
        fillColor: Colors.grey[350],
        prefixIcon: Icon(GitIcons.towel, color: Colors.black),
        suffixIcon: Icon(Icons.search, color: Colors.black,),
      ),
    );
  }
}
