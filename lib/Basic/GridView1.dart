import 'package:flutter/material.dart';

import 'list_data.dart';

class GridView1 extends StatelessWidget {
  const GridView1({Key? key}) : super(key: key);

  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromRGBO(230, 230, 230, 0.9),
            width: 1.0,
          ),
        ),
        child: Column(
          children: <Widget>[
            Image.network(value["imageUrl"]),
            const SizedBox(height: 12),
            Text(
              value["title"],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: _getListData(),
    );
  }
}
