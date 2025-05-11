import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是一个标题'),
          backgroundColor: Colors.green,
        ),
        body: SendRequestGet(),
      ),
    ),
  );
}

// 有状态的组件
class SendRequestGet extends StatefulWidget {
  const SendRequestGet({super.key});

  @override
  State<SendRequestGet> createState() {
    return StorageState();
  }
}

// 状态
class StorageState extends State<SendRequestGet> {
  String resData = '';

  void handlePress() async {
    var uri = Uri.parse(
      'https://api.geekailab.com/uapi/test/test?requestPrams=11',
    );
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      setState(() {
        resData = response.body;
      });
    } else {
      setState(() {
        resData = "请求失败!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: handlePress, child: Text('发get请求')),
          Text('响应数据: $resData'),
        ],
      ),
    );
  }
}
