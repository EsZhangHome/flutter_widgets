/*
 * @Author: zhangensheng zhangensheng@huice.com
 * @Date: 2023-09-19 15:10:54
 * @LastEditors: zhangensheng zhangensheng@huice.com
 * @LastEditTime: 2023-09-19 15:22:40
 * @FilePath: /flutter_widgets/lib/page_view.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

class PageViewRoute extends StatefulWidget {
  const PageViewRoute({Key? key}) : super(key: key);

  @override
  State<PageViewRoute> createState() => _PageViewRouteState();
}

class _PageViewRouteState extends State<PageViewRoute> {
  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    for (int i = 0; i < 6; i++) {
      children.add(Page(text: i.toString()));
    }
    return Scaffold(
      body: PageView(
        children: children,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        allowImplicitScrolling: true,
      ),
    );
  }
}

class Page extends StatefulWidget {
  final String text;
  const Page({Key? key, required this.text}) : super(key: key);

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    debugPrint('build ${widget.text}');
    return Center(
      child: Text(
        widget.text,
        textScaleFactor: 2,
      ),
    );
  }
}
