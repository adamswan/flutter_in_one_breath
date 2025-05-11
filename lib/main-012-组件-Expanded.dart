import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是一个标题'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(height: 200, color: Colors.red, child: MyExpanded()),
        ),
      ),
    ),
  );
}

class MyExpanded extends StatelessWidget {
  const MyExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Container(height: 100, color: Colors.blue)),
        Expanded(flex: 4, child: Container(height: 100, color: Colors.black)),
        Expanded(flex: 2, child: Container(height: 100, color: Colors.yellow)),
      ],
    );
  }
}
