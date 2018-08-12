import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void _onPress() {
    print("Search Tapped!");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text(
          "AppBar",
          style: new TextStyle(
              fontWeight: FontWeight.w800, color: Colors.redAccent),
        ),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.send),
              onPressed: () => debugPrint("tapped")),
          new IconButton(icon: Icon(Icons.search), onPressed: _onPress)
        ],
      ),

      //other properties
      backgroundColor: Colors.grey.shade500,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Container Text",
              style: new TextStyle(
                  fontSize: 14.5,
                  fontWeight: FontWeight.w400,
                  color: Colors.amberAccent),
            ),
            new InkWell(
              child: new Text("Button"),
              onTap: () => debugPrint("tapped!"),
            ),
          ],
        ),
      ),

      //other properties

      floatingActionButton: new FloatingActionButton(
        onPressed: () => debugPrint('Pressed!'),
        backgroundColor: Colors.redAccent,
        tooltip: 'Going Up!',
        child: new Icon(Icons.accessibility),
      ),

      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.add), title: new Text("hey!")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.print), title: new Text("nope")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.call_missed), title: new Text("hello"))
        ],
        onTap: (int i) => debugPrint("tapped bottomnavbaritem! $i"),
      ),
    );
  }
}
