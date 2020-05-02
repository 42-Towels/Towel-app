import 'package:flutter/material.dart';
import 'TowelStyles.dart';

class GitCardList extends StatelessWidget {
  final entries = {'Git1':'info', 'Git2':'info', 'Git3':'info', 'Git4':'informations', 'Git5':'informations', 'Git6':'informations','Git7':'informations'};

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 150,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            margin: EdgeInsetsDirectional.only(top: 8,bottom: 8),
            elevation: 4,
            child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Text('${entries.keys.toList()[index]}', style:TowelStyles.gitTitleTextStyle, ),
                ]
              ),
              Row(
                children: <Widget>[
                  Text('${entries[entries.keys.toList()[index]]}', style:TowelStyles.gitDescTextStyle, )
                ]
              )
              ],
            ),
          ),
        );
      },
    );
  }
}
