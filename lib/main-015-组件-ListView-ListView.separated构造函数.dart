import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('我是一个标题'),
          backgroundColor: Colors.green,
        ),
        body: MyListView(),
      ),
    ),
  );
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // itemBuilder
      itemBuilder: (context, index) {
        return Container(
          height: 100,
          color: Colors.red[90],
          child: Row(
            children: [
              // 1. 左边的图片
              Image.network(
                'https://p5.itc.cn/q_70/images03/20211214/f8398a3a44e34dc3b7d152af73dff4d9.jpeg',
                width: 90,
              ),

              // 2. 中间的文字
              const Expanded(
                child: Text(
                  '高圆圆刘亦菲高圆圆刘亦菲高圆圆刘亦菲高圆圆刘亦菲高圆圆刘亦菲高圆圆刘亦菲高圆圆刘亦菲',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              // 3. 右边图标
              const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Icon(Icons.access_time_filled),
              ),
            ],
          ),
        );
      },

      // separatorBuilder
      separatorBuilder: (context, index) {
        return Divider(height: 10, color: Colors.black);
      },
      // itemCount
      itemCount: 30,
    );
  }
}
