/*
 * @Author: zhangensheng zhangensheng@huice.com
 * @Date: 2023-08-16 14:28:19
 * @LastEditors: zhangensheng zhangensheng@huice.com
 * @LastEditTime: 2023-09-27 09:13:34
 * @FilePath: /flutter_widgets/lib/app.dart
 * @Description: app page
 */
import 'package:flutter/material.dart';
import 'package:flutter_widgets/custom_sliver.dart';
import 'package:flutter_widgets/home_page.dart';
import 'package:flutter_widgets/inherited_provider.dart';
import 'package:flutter_widgets/inherited_widget_counter.dart';
import 'package:flutter_widgets/listview.dart';
import 'package:flutter_widgets/nested_scroll_view.dart';
import 'package:flutter_widgets/page_view.dart';
import 'package:flutter_widgets/scroll_notifaction.dart';
import 'package:flutter_widgets/stf_2.dart';
import 'package:flutter_widgets/tab_bar.dart';
import 'package:flutter_widgets/wechat_circle.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // home: const MyHomePage(title: '计数器'),
      // home: const ListViewPage(),
      home: StfBuildTest1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
