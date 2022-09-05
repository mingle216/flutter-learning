import 'package:flutter/material.dart';

class AppBarPage1 extends StatefulWidget {
  const AppBarPage1({Key? key, required String title}) : super(key: key);

  @override
  State<AppBarPage1> createState() => _AppBarPage1State();
}

class _AppBarPage1State extends State<AppBarPage1>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 3,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: "返回",
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Container(
          child: const Text('顶部 tab 切换'),
          margin: const EdgeInsets.all(60.0),
        ),
        bottom: TabBar(
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.directions_bike),
            ),
            Tab(
              icon: Icon(Icons.directions_boat),
            ),
            Tab(
              icon: Icon(Icons.directions_bus),
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(child: Text('自行车')),
          Center(child: Text('船')),
          Center(child: Text('巴士')),
        ],
      ),
    );
  }
}
