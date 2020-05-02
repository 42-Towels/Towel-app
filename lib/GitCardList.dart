import 'package:flutter/material.dart';
import 'TowelStyles.dart';

class GitCardList extends StatelessWidget {
  final List<String> entries = <String>['Git1', 'Git2', 'Git3'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          child: Card(child: Text('${entries[index]}', style:TowelStyles.gitTitleTextStyle, )),
        );
      },
    );
  }
}
