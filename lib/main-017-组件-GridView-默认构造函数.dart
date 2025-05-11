import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是一个标题'),
          backgroundColor: Colors.grey,
        ),
        body: MyGridDefault(),
      ),
    ),
  );
}

class MyGridDefault extends StatelessWidget {
  const MyGridDefault({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      // gridDelegate 用于控制子组件的布局方式
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10, // 每行之间的间隔距离
        crossAxisCount: 3, // 一行放几个子组件
        crossAxisSpacing: 10, // 每列之间的间隔距离
        childAspectRatio: 4 / 3, // 子组件的宽度和高度的比值
      ),
      children: [
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: Text('高圆圆1'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text('高圆圆2'),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: Text('高圆圆3'),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Text('高圆圆4'),
        ),
        Container(
          color: Colors.orange,
          alignment: Alignment.center,
          child: Text('高圆圆5'),
        ),
        Container(
          color: Colors.purple,
          alignment: Alignment.center,
          child: Text('高圆圆6'),
        ),
        Container(
          color: Colors.pink,
          alignment: Alignment.center,
          child: Text('高圆圆7'),
        ),
        Container(
          color: Colors.brown,
          alignment: Alignment.center,
          child: Text('高圆圆8'),
        ),
        Container(
          color: Colors.cyan,
          alignment: Alignment.center,
          child: Text('高圆圆9'),
        ),
        Container(
          color: Colors.deepOrange,
          alignment: Alignment.center,
          child: Text('高圆圆10'),
        ),
        Container(
          color: Colors.deepPurple,
          alignment: Alignment.center,
          child: Text('高圆圆11'),
        ),
      ],
    );
  }
}
