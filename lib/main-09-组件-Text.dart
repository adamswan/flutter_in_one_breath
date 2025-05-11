import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是一个标题'),
          backgroundColor: Colors.green,
        ),
        body: MyText(),
      ),
    ),
  );
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '我是一个高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆高圆圆',
      style: TextStyle(
        fontSize: 20,
        color: Colors.pinkAccent,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center, // 文本对齐方式
      maxLines: 1, // 最大行数
      overflow: TextOverflow.ellipsis, // 超出部分显示省略号
    );
  }
}
