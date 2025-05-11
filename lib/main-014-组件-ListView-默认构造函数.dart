import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是一个标题'),
          backgroundColor: Colors.green,
        ),
        body: MyListView(),
      ),
    ),
  );
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // 横向滚动
      // scrollDirection: Axis.horizontal,

      // 纵向运动
      scrollDirection: Axis.vertical,

      // 禁用滚动
      // physics: const NeverScrollableScrollPhysics(),

      // 滚动的元素
      children: [
        Container(height: 100, color: Colors.red, child: Text('高圆圆')),
        Container(height: 100, color: Colors.pink, child: Text('高圆圆')),
        Container(height: 100, color: Colors.yellow, child: Text('高圆圆')),
        Container(height: 100, color: Colors.blue, child: Text('高圆圆')),
        Container(height: 100, color: Colors.green, child: Text('高圆圆')),
        Container(height: 100, color: Colors.black, child: Text('高圆圆')),
        Container(height: 100, color: Colors.orange, child: Text('高圆圆')),
        Container(height: 100, color: Colors.purple, child: Text('高圆圆')),
        Container(height: 100, color: Colors.yellow, child: Text('高圆圆')),
      ],
    );
  }
}
