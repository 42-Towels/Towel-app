import 'package:flutter/material.dart';
import 'TowelStyles.dart';

class GitCard extends StatelessWidget {
  const GitCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Git TITLE',
                style: TowelStyles.gitTitleTextStyle,
              ),
              Text(
                'Git Description',
                style: TowelStyles.gitDescTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}