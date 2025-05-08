import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是一个标题'),
          backgroundColor: Colors.green,
        ),
        body: const Center(
          child: Text('Hello World', style: TextStyle(fontSize: 40)),
        ),
      ),
    ),
  );
}
