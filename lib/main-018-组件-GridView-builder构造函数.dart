import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是一个标题'),
          backgroundColor: Colors.grey,
        ),
        body: MyGridBuilder(),
      ),
    ),
  );
}

class MyGridBuilder extends StatelessWidget {
  const MyGridBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // gridDelegate 用于控制子组件的布局方式
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10, // 每行之间的间隔距离
        crossAxisCount: 3, // 一行放几个子组件
        crossAxisSpacing: 10, // 每列之间的间隔距离
        childAspectRatio: 4 / 3, // 子组件的宽度和高度的比值
      ),

      // itemBuilder
      itemBuilder: (context, index) {
        return Container(
          color: const Color.fromARGB(255, 241, 140, 132),
          alignment: Alignment.center,
          child: Text('高圆圆$index'),
        );
      },

      // itemCount
      itemCount: 30,
    );
  }
}
