import 'package:flutter/material.dart';

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

//! 1、定义一个有状态组件
class MyCount extends StatefulWidget {
  const MyCount({super.key});

  @override
  // createState 方法返回的是 StorageState 类的实例对象，
  // 而 StorageState 类继承自 State<MyCount> 类，
  // 所以 createState 方法返回值的类型就是 State<MyCount>
  State<MyCount> createState() {
    return StorageState();
  }

  // 也可以简写为：
  // State<MyCount> createState() => StorageState();
}

//! 2、存放 MyCount 组件的状态
class StorageState extends State<MyCount> {
  // count 就是状态
  int count = 0;

  void handlePressed() {
    // 必须通过 setState 方法来更新状态
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        height: 50,
        child: ElevatedButton(
          onPressed: handlePressed,
          child: Text('你点击了 $count 次'),
        ),
      ),
    );
  }
}
