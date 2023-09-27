/*
 * @Author: zhangensheng zhangensheng@huice.com
 * @Date: 2023-09-21 15:14:57
 * @LastEditors: zhangensheng zhangensheng@huice.com
 * @LastEditTime: 2023-09-21 15:24:14
 * @FilePath: /flutter_widgets/lib/nested_scroll_view.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

class NestedScrollViewRouter extends StatefulWidget {
  const NestedScrollViewRouter({Key? key}) : super(key: key);

  @override
  State<NestedScrollViewRouter> createState() => _NestedScrollViewRouterState();
}

class _NestedScrollViewRouterState extends State<NestedScrollViewRouter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            centerTitle: true,
            title: const Text('嵌套ListView'),
            pinned: true, // 固定在顶部
            forceElevated: innerBoxIsScrolled,
          ),
          buildSliverList(5), //
        ],
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          physics: const ClampingScrollPhysics(), //重要
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 50,
              child: Center(child: Text('Item $index')),
            );
          },
        ),
      ),
    );
  }
}

Widget buildSliverList([int count = 5]) {
  return SliverFixedExtentList(
    itemExtent: 50,
    delegate: SliverChildBuilderDelegate(
      (context, index) {
        return ListTile(title: Text('$index'), onTap: () => print(index));
      },
      childCount: count,
    ),
  );
}
