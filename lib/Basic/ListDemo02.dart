import 'package:flutter/material.dart';

class ListDemo02 extends StatelessWidget {
  const ListDemo02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            color: Colors.lightBlue,
          ),
          Container(
            width: 180,
            color: Colors.amber,
            child: ListView(
              children: <Widget>[
                Image.network(
                    'https://wx-login.oss-cn-shanghai.aliyuncs.com/upload/22cc5c80-cf21-4ac3-8b31-6419e929ad62.jpg'),
                const SizedBox(
                  height: 16.0,
                ),
                const Text(
                  '这是一个文本信息',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 180,
            color: Colors.orange,
          ),
          Container(
            width: 180,
            color: Colors.deepPurple,
          )
        ],
      ),
    );
  }
}
