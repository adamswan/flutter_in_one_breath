import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _cities = [
    '拉萨',
    '青岛',
    '厦门',
    '洛阳',
    '郑州',
    '武汉',
    '成都',
    '苏州',
    '杭州',
    '深圳',
    '拉萨2',
    '青岛2',
    '厦门2',
    '洛阳2',
    '郑州2',
    '武汉2',
    '成都2',
    '苏州2',
    '杭州2',
    '深圳2',
    // 更多城市...
  ];

  bool _isLoading = false;

  // 监听滚动事件的 ScrollController
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // 组件初始化后, 就添加一个监听器, 监听上拉动作
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  // 下拉刷新
  Future<void> _refreshData() async {
    await Future.delayed(Duration(seconds: 1));
    // 反转数组，模拟新数据的效果
    setState(() {
      _cities = _cities.reversed.toList();
    });
  }

  Widget _buildCityItem(city) {
    return Container(
      color: Colors.red,
      height: 60,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 5),
      child: Text(city, style: TextStyle(color: Colors.white)),
    );
  }

  Widget _buildLoadingWidget() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(child: CircularProgressIndicator()),
    );
  }

  // 上拉加载
  void _loadMoreData() async {
    if (!_isLoading) {
      setState(() {
        _isLoading = true;
      });

      // 模拟网络请求
      await Future.delayed(Duration(seconds: 1));

      // 加载更多数据
      setState(() {
        _cities.addAll([
          '新城市1',
          '新城市2',
          // 更多城市...
        ]);
        _isLoading = false;
      });
    }
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      _loadMoreData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('下拉刷新与上拉加载')),
      // RefreshIndicator 组件就是下拉时出现的小球
      body: RefreshIndicator(
        // 监听下拉事件
        onRefresh: _refreshData,
        child: ListView.builder(
          controller: _scrollController,
          physics: AlwaysScrollableScrollPhysics(), // 确保可以一直滚动
          itemCount: _cities.length + (_isLoading ? 1 : 0),
          itemBuilder: (context, index) {
            if (index < _cities.length) {
              return _buildCityItem(_cities[index]);
            } else {
              return _buildLoadingWidget();
            }
          },
        ),
      ),
    );
  }
}
