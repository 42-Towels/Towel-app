import 'package:flutter/material.dart';
import '../Styles/TowelStyles.dart';
import '../customIcons/git_icons.dart';

class GitCardList extends StatelessWidget {
  final entries = {'Git1':'info', 'Git2':'info', 'Git3':'info', 'Git4':'informations', 'Git5':'informations', 'Git6':'informations','Git7':'informations'};

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 150,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
            elevation: 4,
            child:Row(
              children:[
                AspectRatio(aspectRatio: 3/5, child: Icon(GitIcons.github_circled, size: 40,),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children:[
                    Padding(
                      padding: EdgeInsetsDirectional.only(top:8, bottom:4, end:8),
                      child: Text('${entries.keys.toList()[index]}', style:TowelStyles.gitTitleTextStyle,),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(top:4, bottom:4, end:8),
                      child: Text('${entries[entries.keys.toList()[index]]}', style:TowelStyles.gitDescTextStyle, )
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

