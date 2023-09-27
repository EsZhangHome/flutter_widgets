/*
 * @Author: zhangensheng zhangensheng@huice.com
 * @Date: 2023-09-19 15:51:40
 * @LastEditors: zhangensheng zhangensheng@huice.com
 * @LastEditTime: 2023-09-19 15:57:15
 * @FilePath: /flutter_widgets/lib/custom_scroll_view.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

class CustomScrollViewRouter extends StatefulWidget {
  const CustomScrollViewRouter({Key? key}) : super(key: key);

  @override
  State<CustomScrollViewRouter> createState() => _CustomScrollViewRouterState();
}

class _CustomScrollViewRouterState extends State<CustomScrollViewRouter> {
  @override
  Widget build(BuildContext context) {
    return // 因为本路由没有使用 Scaffold，为了让子级Widget(如Text)使用
// Material Design 默认的样式风格,我们使用 Material 作为本路由的根。
        Material(
      child: CustomScrollView(
        slivers: <Widget>[
          // AppBar，包含一个导航栏.
          SliverAppBar(
            pinned: true, // 滑动到顶端时会固定住
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Demo'),
              background: Image.asset(
                "./imgs/sea.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid(
              //Grid
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, //Grid按两列显示
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  //创建子widget
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.cyan[100 * (index % 9)],
                    child: Text('grid item $index'),
                  );
                },
                childCount: 20,
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                //创建列表项
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('list item $index'),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
