import 'package:flutter/material.dart';
import './pages/my_count.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是一个标题'),
          backgroundColor: Colors.green,
        ),
        //! 3、使用有状态组件
        body: MyCount(),
      ),
    ),
  );
}
