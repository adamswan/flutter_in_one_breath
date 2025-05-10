import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是一个标题'),
          backgroundColor: Colors.green,
        ),
        //! 使用有状态组件
        body: MyCount(),
      ),
    ),
  );
}

// 定义有状态组件
class MyCount extends StatefulWidget {
  const MyCount({super.key});

  @override
  State<MyCount> createState() {
    print('有状态组件 -- createState 执行');
    return StorageState();
  }
}

class StorageState extends State<MyCount> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    print('当前存状态的组件 -- initState 执行');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('当前存状态的组件 -- didChangeDependencies 执行');
  }

  void handlePressed() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('当前存状态的组件 -- build 执行');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('点击次数: $count'),
            ElevatedButton(
              onPressed: () {
                handlePressed();
              },
              child: Text('+1'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant MyCount oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('当前存状态的组件 -- didUpdateWidget 执行');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('当前存状态的组件 -- deactivate 执行');
  }

  @override
  void dispose() {
    super.dispose();
    print('当前存状态的组件 -- dispose 执行');
  }
}
