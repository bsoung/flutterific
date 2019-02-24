import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() => AppState();
}

class AppState extends State<App> {
  int counter = 0;

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text('Images'),
        ),
      ),
    );
  }
}
