/*
 * @Author: zhangensheng zhangensheng@huice.com
 * @Date: 2023-09-26 08:52:20
 * @LastEditors: zhangensheng zhangensheng@huice.com
 * @LastEditTime: 2023-09-26 08:52:32
 * @FilePath: /flutter_widgets/lib/inherited_widget_2.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

class DataInheritedWidget<T> extends InheritedWidget {
  //持有的数据源,由父widget赋值
  T data;
  //父widget的更新方法
  Function? update;

  DataInheritedWidget(Widget child, this.data, this.update, {Key? key})
      : super(child: child, key: key);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    //此处可以选择是否通知依赖InheritedWidget的子widget集合进行更新,
    return true;
  }
}
