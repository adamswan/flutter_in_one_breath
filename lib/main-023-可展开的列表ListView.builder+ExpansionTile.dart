import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('可展开的列表'),
          backgroundColor: Colors.blue,
        ),
        body: MyListView(),
      ),
    ),
  );
}

class MyListView extends StatelessWidget {
  MyListView({super.key});

  final List<Map<String, dynamic>> cities = [
    {
      'name': '北京',
      'districts': ['东城区', '西城区', '朝阳区', '丰台区'],
    },
    {
      'name': '上海',
      'districts': ['黄浦区', '徐汇区', '长宁区', '静安区', '普陀区', '闸北区', '虹口区'],
    },
    {
      'name': '广州',
      'districts': ['越秀区', '荔湾区', '海珠区', '天河区'],
    },
    {
      'name': '深圳',
      'districts': ['福田区', '罗湖区', '南山区', '宝安区'],
    },
    {
      'name': '杭州',
      'districts': ['上城区', '拱墅区', '西湖区', '滨江区'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cities.length,

      itemBuilder: (context, index) {
        // ExpansionTile 是可展开的列表项
        return ExpansionTile(
          title: Text(cities[index]['name']),
          children:
              cities[index]['districts'].map((district) {
                return ListTile(title: Text(district), tileColor: Colors.amber);
              }).toList(),
        );
      },
    );
  }
}
