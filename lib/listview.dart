/*
 * @Author: zhangensheng zhangensheng@huice.com
 * @Date: 2023-09-06 15:55:52
 * @LastEditors: zhangensheng zhangensheng@huice.com
 * @LastEditTime: 2023-09-21 11:03:06
 * @FilePath: /flutter_widgets/lib/listview.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */

import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);
  static const List<String> data = [
    'toly',
    'toly49',
    'toly56',
    'card',
    'ls',
    'alex',
    'fan sha'
  ];

  static String _displayStringForOption(String option) => option;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            height: 60,
            child: Center(
              child: Text('${data[index]} $index'),
            ),
            color: Colors.primaries[index % Colors.primaries.length],
          );
        },
        itemCount: data.length,
      ),
    );
  }
}
