import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是一个标题'),
          backgroundColor: Colors.green,
        ),
        //! 2、 使用无状态组件
        body: Wife1(),
      ),
    ),
  );
}

// 1、定义无状态组件（不接收参数）
class Wife1 extends StatelessWidget {
  const Wife1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('我是高圆圆'));
  }
}
