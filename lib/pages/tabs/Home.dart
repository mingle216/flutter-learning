import 'package:flutter/material.dart';
import 'package:flutter_demo/Basic/AppBar1.dart';

import '../../Basic/AppBar.dart';
import '../../Basic/DateDemo.dart';
import '../../Basic/DatePickerPubDemo.dart';
import '../../Basic/FloatingActionButtonDemo.dart';
import '../../Basic/FormDemo.dart';
import '../../Basic/FormWidget.dart';
import 'Search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const Search(
                  title: 'search',
                );
              }));
            },
            child: const Text("跳转到搜索页面"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/form',
                arguments: {
                  'id': 20,
                  'name': 'zhangsan',
                },
              );
            },
            child: const Text("跳转到表单页面"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const AppBarPage(
                  title: 'AppBar',
                );
              }));
            },
            child: const Text("跳转到AppBar页面"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const AppBarPage1(
                  title: 'AppBar',
                );
              }));
            },
            child: const Text("跳转到AppBar1页面"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const FloatingActionButtonDemo(
                  title: 'FloatingActionButtonDemo',
                );
              }));
            },
            child: const Text("跳转到FloatingActionButtonDemo页面"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const FormDemo(
                  title: 'FormDemo',
                );
              }));
            },
            child: const Text("跳转到FormDemo页面"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const FormWidget(
                  title: 'FormWidget',
                );
              }));
            },
            child: const Text("跳转到FormWidget页面"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const DateDemo(
                  title: 'DateDemo',
                );
              }));
            },
            child: const Text("跳转到DateDemo页面"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const DatePickerPubDemo(
                  title: 'DatePickerPubDemo',
                );
              }));
            },
            child: const Text("跳转到DatePickerPubDemo页面"),
          ),
        ],
      ),
    ));
  }
}
