import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'home.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {

    return new MaterialApp(
      title: "list of Flutter app",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Tuyển Sinh CTU"),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => 
            ListTile(title: Text("Item $index"), onTap: () => print('Tapped $index'),)
         ),
    ),
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