import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是一个标题'),
          backgroundColor: Colors.green,
        ),
        body: Center(child: MyFloors()),
      ),
    ),
  );
}

class MyFloors extends StatelessWidget {
  const MyFloors({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // 不裁剪超出部分
      clipBehavior: Clip.none,

      // 组件对其方式
      alignment: Alignment.center,

      // 子组件
      children: [
        Container(width: 200, height: 200, color: Colors.pinkAccent),
        Positioned(top: -105, child: Image.asset('assets/open_eyes.png')),
      ],
    );
  }
}
