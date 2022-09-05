import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: const Text("跳转到搜索页面"),
      ),
    );
  }
}
