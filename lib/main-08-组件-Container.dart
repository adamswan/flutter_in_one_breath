import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是一个标题'),
          backgroundColor: Colors.green,
        ),
        body: MyContainer(),
      ),
    ),
  );
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // 1、宽度
      width: 300,

      // 2、高度
      height: 500,

      // 3、盒子的背景色，默认占满整个页面
      // color: Colors.yellow,

      // 4、外边距
      margin: const EdgeInsets.all(20), // all 方法表示上下左右都为 20
      // margin: const EdgeInsets.only(top: 20, left: 20), // 只设置上边距和左边距
      // margin: const EdgeInsets.fromLTRB(10, 20, 30, 40), //  设置上、右、下、左的边距

      // 5、内边距
      padding: const EdgeInsets.all(20),

      // 6、装饰
      decoration: BoxDecoration(
        //! 一旦设置了 decoration，背景色则必须写在这里
        color: Colors.red,

        // 边框
        border: Border.all(color: Colors.black, width: 5),

        // 圆角
        borderRadius: BorderRadius.circular(10),
      ),

      // 子盒子
      child: Container(
        color: Colors.blue,
        alignment: Alignment.center, // 内容对齐方式：居中
        child: const Text('我是高圆圆'),
      ),
    );
  }
}
