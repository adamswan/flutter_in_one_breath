import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是一个标题'),
          backgroundColor: Colors.green,
        ),
        //! 2、 使用无状态组件，给命令参数传参
        body: Wife2(name: '刘亦菲', age: 18),
      ),
    ),
  );
}

//! 1、定义无状态组件（接收参数）
class Wife2 extends StatelessWidget {
  final String name;
  final int age;

  // 注意：构造函数传参时，命名参数 和 位置参数 不能混用
  //! 3、使用构造函数传参
  const Wife2({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('我是$name,今年$age'));
  }
}
