import 'package:flutter/material.dart';

class StackDemo3 extends StatelessWidget {
  const StackDemo3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.lightGreen,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              child: Icon(
                Icons.home,
                size: 50,
                color: Colors.white,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 100,
              child: Icon(
                Icons.search,
                size: 40,
                color: Colors.white,
              ),
            ),
            Positioned(
              right: 0,
              child: Icon(
                Icons.settings_applications,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
