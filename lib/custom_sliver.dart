/*
 * @Author: zhangensheng zhangensheng@huice.com
 * @Date: 2023-09-19 16:24:41
 * @LastEditors: zhangensheng zhangensheng@huice.com
 * @LastEditTime: 2023-09-21 12:30:49
 * @FilePath: /flutter_widgets/lib/custom_sliver.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

class CustomSliverDemo extends StatefulWidget {
  const CustomSliverDemo({Key? key}) : super(key: key);

  @override
  State<CustomSliverDemo> createState() => _CustomSliverDemoState();
}

class _CustomSliverDemoState extends State<CustomSliverDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Custom'),
              background: Image.network(
                "https://seopic.699pic.com/photo/40172/8630.jpg_wh1200.jpg",
                fit: BoxFit.cover,
              ),
              stretchModes: const [
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
              ],
            ),
            expandedHeight: 400,
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 100,
              color: Colors.red,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              color: Colors.green,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                height: 60,
                child: Center(
                  child: Text(
                    index.toString(),
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                color: Colors.primaries[index % Colors.primaries.length],
              );
            }, childCount: 40),
          )
        ],
      ),
    );
  }
}
