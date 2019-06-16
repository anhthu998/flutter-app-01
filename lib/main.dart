import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:english_words/english_words.dart';
//import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {

    return new MaterialApp(
      title: "list of Flutter app",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("tuyen sinh"),
        ),
        body: RandomWords(),
    ),
    );
    }
    
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }
}
class RandomWordsState extends State<RandomWords> {//qli trang thai 
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }
  Widget _buildSuggestions() {
  return new ListView.builder(
    padding: const EdgeInsets.all(10.0),
    itemBuilder: (context, i) {
      if (i.isOdd) return Divider();
      final index = i ~/ 2;
      // If you've reached at the end of the available word pairs...
      if (index >= _suggestions.length) {
        // ...then generate 10 more and add them to the suggestions list.
      _suggestions.addAll(generateWordPairs().take(10));
      }
        return _buildRow(_suggestions[index]);
    },
  );
}
    Widget _buildRow(WordPair pair) {
    return new ListTile(
      title: new Text(pair.asPascalCase, style: _biggerFont),
    );
  }

}























  /*  return MaterialApp(
      title: 'tuyển sinh ctu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      );


      home: MyHomePage(title: 'Bạn muốn thi khối thi nào ?')
    );
      
    Widget buildButton(IconData icon, String buttonTitle){
      final Color tintColor = Colors.blue;
      return new Column( 
        children: <Widget>[
          new Icon(icon, color: tintColor),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(buttonTitle, style: new TextStyle(fontSize: 16.0,
            fontWeight: FontWeight.w600 ),),
          )
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
    //build in a separated function
         buildButton(Icons.home, "Home"),
         buildButton(Icons.arrow_back, "Back"),
         buildButton(Icons.arrow_forward, "Next"),
         buildButton(Icons.share, "Share"),
      
        ],
      ),
    );
  final textSection = new Container(
    padding: const EdgeInsets.all(10.0),
    child: new Text('gioi thieu ve truong', 
    style: new TextStyle(
      color: Colors.grey[800],
      fontSize: 16.0
    ),),
  );
  }

}

*/