/*
 * @Author: zhangensheng zhangensheng@huice.com
 * @Date: 2023-09-26 08:53:08
 * @LastEditors: zhangensheng zhangensheng@huice.com
 * @LastEditTime: 2023-09-26 09:00:43
 * @FilePath: /flutter_widgets/lib/inherted_widget_parent.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:flutter_widgets/data_inherited_widget.dart';

class InheritedParentWidget<T> extends StatefulWidget {
  final Widget child;
  final T data;

  const InheritedParentWidget(
      {required this.child, required this.data, Key? key})
      : super(key: key);

//仅获取InheritedParentWidget中的数据,
  static T? ofData<T>(BuildContext context) {
    //context Element实现了BuildContext抽象类,此处context就是InheritedParentWidget子widget对应的Element,
    return (context
            .getElementForInheritedWidgetOfExactType<DataInheritedWidget<T>>()
            ?.widget as DataInheritedWidget<T>?)
        ?.data;
  }

//仅获取InheritedParentWidget中的数据,并对InheritedParentWidget进行依赖监听
//context 同上
  static T? of<T>(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<DataInheritedWidget<T>>()
        ?.data;
  }

  static void update<T>(BuildContext context) {
    (context
            .getElementForInheritedWidgetOfExactType<DataInheritedWidget<T>>()
            ?.widget as DataInheritedWidget<T>?)
        ?.update
        ?.call();
  }

  @override
  State<StatefulWidget> createState() {
    return InheritedParent<T>();
  }
}

class InheritedParent<T> extends State<InheritedParentWidget> {
  void update() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DataInheritedWidget<T>(widget.child, widget.data, update);
  }
}
