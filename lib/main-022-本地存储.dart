import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SharedPreferences 测试'),
          backgroundColor: Colors.green,
        ),
        body: Center(child: const SharedPreferencesTest()),
      ),
    ),
  );
}

class SharedPreferencesTest extends StatefulWidget {
  const SharedPreferencesTest({super.key});

  @override
  State<SharedPreferencesTest> createState() => _SharedPreferencesTestState();
}

class _SharedPreferencesTestState extends State<SharedPreferencesTest> {
  // 存储 username
  Future<void> saveUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('username', '张三');
    print('已保存 username: 张三');
  }

  // 存储 age
  Future<void> saveAge() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setInt('age', 25);
    print('已保存 age: 25');
  }

  // 存储 isLogin
  Future<void> saveIsLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setBool('isLogin', true);
    print('已保存 isLogin: true');
  }

  // 读取所有数据
  Future<void> readData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var username = prefs.getString('username');
    var age = prefs.getInt('age');
    var isLogin = prefs.getBool('isLogin');

    print('--- 当前存储的数据 ---');
    print('username: $username');
    print('age: $age');
    print('isLogin: $isLogin');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),

      child: Column(
        children: [
          ElevatedButton(
            onPressed: saveUsername,
            child: const Text('保存 username'),
          ),
          const SizedBox(height: 10),

          ElevatedButton(onPressed: saveAge, child: const Text('保存 age')),
          const SizedBox(height: 10),

          ElevatedButton(
            onPressed: saveIsLogin,
            child: const Text('保存 isLogin'),
          ),
          const SizedBox(height: 20),

          ElevatedButton(onPressed: readData, child: const Text('读取并打印数据')),
        ],
      ),
    );
  }
}
