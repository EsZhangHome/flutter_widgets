/*
 * @Author: zhangensheng zhangensheng@huice.com
 * @Date: 2023-09-19 15:35:34
 * @LastEditors: zhangensheng zhangensheng@huice.com
 * @LastEditTime: 2023-09-19 15:42:34
 * @FilePath: /flutter_widgets/lib/tab_bar.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

class TabBarRouter extends StatefulWidget {
  const TabBarRouter({Key? key}) : super(key: key);

  @override
  State<TabBarRouter> createState() => _TabBarRouterState();
}

class _TabBarRouterState extends State<TabBarRouter>
    with SingleTickerProviderStateMixin {
  List tabs = ["新闻", "历史", "图片"];
  late var _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Name"),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs.map((e) => Tab(text: e)).toList(),
        ),
      ),
      body: TabBarView(
        //构建
        controller: _tabController,
        children: tabs.map((e) {
          return Container(
            alignment: Alignment.center,
            child: Text(e, textScaleFactor: 5),
          );
        }).toList(),
      ),
    );
  }

  @override
  void dispose() {
    // 释放资源
    _tabController.dispose();
    super.dispose();
  }
}
