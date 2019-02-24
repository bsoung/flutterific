import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import './models/image_model.dart';
import 'dart:convert';

class App extends StatefulWidget {
  createState() => AppState();
}

class AppState extends State<App> {
  int counter = 0;

  void fetchImage() async {
    counter += 1;
    final response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text('Images'),
        ),
      ),
    );
  }
}
