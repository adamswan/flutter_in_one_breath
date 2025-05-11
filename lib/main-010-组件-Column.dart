import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是一个标题'),
          backgroundColor: Colors.green,
        ),
        body: MyCol(),
      ),
    ),
  );
}

class MyCol extends StatelessWidget {
  const MyCol({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // 主轴对齐方式
      mainAxisAlignment: MainAxisAlignment.center,

      // 交叉轴对齐方式
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Image.network(
          'https://p5.itc.cn/q_70/images03/20211214/f8398a3a44e34dc3b7d152af73dff4d9.jpeg',
          width: 200,
        ),
        const Text('我是高圆圆'),
        const Text('今年18岁'),
      ],
    );
  }
}
