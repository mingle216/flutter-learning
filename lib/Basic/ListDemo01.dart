import 'package:flutter/material.dart';

class ListDemo01 extends StatelessWidget {
  const ListDemo01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "this is list",
                style: TextStyle(fontSize: 28.0),
              ),
              subtitle: Text('this is list this is list'),
            ),
            ListTile(
              title: Text("this is list"),
              subtitle: Text('this is list this is list'),
              trailing: Icon(Icons.phone),
            ),
            ListTile(
              title: Text("this is list"),
              subtitle: Text('this is list this is list'),
            ),
            ListTile(
              title: Text("this is list"),
              subtitle: Text('this is list this is list'),
            ),
            ListTile(
              title: Text("this is list"),
              subtitle: Text('this is list this is list'),
            ),
          ],
        ),
      ),
    );
  }
}
