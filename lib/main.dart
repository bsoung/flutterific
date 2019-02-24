import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hi there!');
        },
        child: Text('+'),
      ),
      appBar: AppBar(
        title: Text('Images'),
      ),
    ),
  );

  runApp(app);
}
