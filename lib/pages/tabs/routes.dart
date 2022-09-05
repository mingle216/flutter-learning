import 'package:flutter/material.dart';

import '../../Basic/AppBar.dart';
import '../../Basic/AppBar1.dart';
import '../../Basic/DateDemo.dart';
import '../../Basic/DatePickerPubDemo.dart';
import '../../Basic/FloatingActionButtonDemo.dart';
import '../../Basic/FormDemo.dart';
import '../../Basic/FormWidget.dart';
import '../Tabs.dart';
import 'Form.dart';
import 'Search.dart';

final Map<String, Function> routes = {
  '/': (context) => const Tabs(),
  '/search': (context) => const Search(title: '搜索'),
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
  '/AppBar': (context) => AppBarPage(title: 'AppBar'),
  '/AppBar1': (context) => AppBarPage1(title: 'AppBar1'),
  '/FloatingActionButtonDemo': (context) =>
      FloatingActionButtonDemo(title: 'FloatingActionButtonDemo'),
  '/FormDemo': (context) => FormDemo(title: 'FormDemo'),
  '/FormWidget': (context) => FormWidget(title: 'FormWidget'),
  '/DateDemo': (context) => DateDemo(title: 'DateDemo'),
  '/DatePickerPubDemo': (context) =>
      DatePickerPubDemo(title: 'DatePickerPubDemo'),
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments),
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
};
