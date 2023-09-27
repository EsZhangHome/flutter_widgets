/*
 * @Author: zhangensheng zhangensheng@huice.com
 * @Date: 2023-09-21 11:35:13
 * @LastEditors: zhangensheng zhangensheng@huice.com
 * @LastEditTime: 2023-09-21 14:17:27
 * @FilePath: /flutter_widgets/lib/wechat_circle.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:flutter_widgets/sliver_fliexible_header.dart';

class WechatCircleDemo extends StatefulWidget {
  const WechatCircleDemo({Key? key}) : super(key: key);

  @override
  State<WechatCircleDemo> createState() => _WechatCircleDemoState();
}

class _WechatCircleDemoState extends State<WechatCircleDemo> {
  double _initHeight = 250;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          SliverFlexibleHeader(
            visibleExtent: _initHeight,
            builder: (context, availableHeight, direction) {
              print(availableHeight);
              return GestureDetector(
                onTap: () => print('tap'),
                child: LayoutBuilder(builder: (context, cons) {
                  return Image(
                    image: const AssetImage("imgs/avatar.png"),
                    width: 50.0,
                    height: availableHeight,
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.cover,
                  );
                }),
              );
            },
          ),
          SliverToBoxAdapter(
            child: ListTile(
              onTap: () {
                setState(() {
                  _initHeight = _initHeight == 250 ? 150 : 250;
                });
              },
              title: const Text('重置高度'),
              trailing: Text('当前高度 $_initHeight'),
            ),
          ),
          buildSliverList(30),
        ],
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
