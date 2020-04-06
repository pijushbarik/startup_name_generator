import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';


class SavedSuggestions extends StatelessWidget {
  final Set<WordPair> saved;
  final _biggerFont = new TextStyle(fontSize: 18.0);

  SavedSuggestions({@required this.saved}): super();

  @override
  Widget build(BuildContext context) {
    final Iterable<ListTile> tiles = saved.map(
      (WordPair pair) => ListTile(
        title: Text(
          pair.asPascalCase,
          style: _biggerFont,
        )
      )
    );
    final List<Widget> divided = ListTile.divideTiles(
        tiles: tiles,
        context: context
    ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Suggestions'),
      ),
      body: ListView(children: divided),
    );
  }
}