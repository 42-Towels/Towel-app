class GitCardList extends StatelessWidget {
  const GitCardList({
    Key key,
    @required this.entries,
  }) : super(key: key);

  final List<String> entries;

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
