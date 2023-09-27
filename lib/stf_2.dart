/*
 * @Author: zhangensheng zhangensheng@huice.com
 * @Date: 2023-09-27 09:07:30
 * @LastEditors: zhangensheng zhangensheng@huice.com
 * @LastEditTime: 2023-09-27 09:13:01
 * @FilePath: /flutter_widgets/lib/stf_2.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

class StfBuildTest1 extends StatefulWidget {
  const StfBuildTest1({Key? key}) : super(key: key);

  @override
  State<StfBuildTest1> createState() => _StfBuildTest1State();
}

class _StfBuildTest1State extends State<StfBuildTest1> {
  @override
  Widget build(BuildContext context) {
    print("build 1");
    return const Scaffold(body: StfBuildTest2());
  }
}

class StfBuildTest2 extends StatefulWidget {
  const StfBuildTest2({Key? key}) : super(key: key);

  @override
  State<StfBuildTest2> createState() => _StfBuildTest2State();
}

class _StfBuildTest2State extends State<StfBuildTest2> {
  bool isTap = false;

  onTap() {
    isTap = !isTap;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("build 2");
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: isTap ? Colors.green : Colors.red,
      ),
    );
  }
}
