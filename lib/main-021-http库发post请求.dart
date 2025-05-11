import 'dart:convert';
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
        body: SendRequestPost(),
      ),
    ),
  );
}

// 有状态的组件
class SendRequestPost extends StatefulWidget {
  const SendRequestPost({super.key});

  @override
  State<SendRequestPost> createState() {
    return StorageState();
  }
}

// 状态
class StorageState extends State<SendRequestPost> {
  var resData1 = '';
  var resData2 = '';

  // 1、 发 urlencoded 格式的POST请求
  void handlePress1() async {
    var uri = Uri.parse('https://api.devio.org/uapi/test/test');

    // 请求体
    var params = {"requestPrams": "11"};

    var response = await http.post(uri, body: params);

    // 字符串转换为对象
    var obj = jsonDecode(response.body);

    if (response.statusCode == 200) {
      setState(() {
        resData1 = obj['msg'];
      });
    } else {
      setState(() {
        resData1 = "请求失败!";
      });
    }
  }

  // 2、 发 application/json 格式的POST请求
  void handlePress2() async {
    var uri = Uri.parse('https://api.devio.org/uapi/test/testJson');

    // 请求体
    var params = {"requestParams": "doPost"};

    // 设置请求头
    var response = await http.post(
      uri,
      body: jsonEncode(params),
      headers: {"Content-Type": "application/json"},
    );

    // 字符串转换为对象
    var obj = jsonDecode(response.body);

    if (response.statusCode == 200) {
      setState(() {
        resData2 = obj['msg'];
      });
    } else {
      setState(() {
        resData2 = "请求失败!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 文字
      body: Column(
        children: [
          ElevatedButton(
            onPressed: handlePress1,
            child: Text('发 urlencoded 格式的POST请求'),
          ),

          Text('响应数据1: $resData1'),

          ElevatedButton(
            onPressed: handlePress2,
            child: Text('发 application/json 格式的POST请求'),
          ),
          Text('响应数据2: $resData2'),
        ],
      ),
    );
  }
}
