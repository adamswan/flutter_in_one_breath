import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是一个标题'),
          backgroundColor: Colors.grey,
        ),
        body: MyGridExtent(),
      ),
    ),
  );
}

class MyGridExtent extends StatelessWidget {
  const MyGridExtent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 100, // 最大宽度, 超过这个宽度就会换行
      mainAxisSpacing: 10, // 每行之间的间隔距离
      crossAxisSpacing: 10, // 每列之间的间隔距离
      childAspectRatio: 4 / 3, // 子组件的宽度和高度的比值

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
