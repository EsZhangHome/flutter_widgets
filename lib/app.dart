/*
 * @Author: zhangensheng zhangensheng@huice.com
 * @Date: 2023-08-16 14:28:19
 * @LastEditors: zhangensheng zhangensheng@huice.com
 * @LastEditTime: 2023-08-16 14:30:46
 * @FilePath: /flutter_widgets/lib/app.dart
 * @Description: app page
 */
import 'package:flutter/material.dart';
import 'package:flutter_widgets/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: '计数器'),
      debugShowCheckedModeBanner: false,
    );
  }
}
