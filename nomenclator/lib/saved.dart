import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// ignore: must_be_immutable
class SavedWords extends StatelessWidget {
  final Set<WordPair>? saved;
  final BuildContext? context;
  var tiles;
  var divided;

  SavedWords({@required this.saved, @required this.context}) {
    tiles = saved?.map(
      (WordPair pair) {
        return ListTile(
          title: Text(
            pair.asPascalCase,
            style: TextStyle(fontSize: 18),
          ),
        );
      },
    );

    divided = tiles.isNotEmpty
        ? ListTile.divideTiles(context: context, tiles: tiles).toList()
        : <Widget>[];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Suggestions'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: divided,
      ),
    );
  }
}
