import 'package:flutter/cupertino.dart';

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://wx-login.oss-cn-shanghai.aliyuncs.com/upload/360b8539-cc27-4328-a116-7faaa7e67520.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://wx-login.oss-cn-shanghai.aliyuncs.com/upload/360b8539-cc27-4328-a116-7faaa7e67520.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://wx-login.oss-cn-shanghai.aliyuncs.com/upload/360b8539-cc27-4328-a116-7faaa7e67520.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://wx-login.oss-cn-shanghai.aliyuncs.com/upload/360b8539-cc27-4328-a116-7faaa7e67520.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://wx-login.oss-cn-shanghai.aliyuncs.com/upload/360b8539-cc27-4328-a116-7faaa7e67520.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://wx-login.oss-cn-shanghai.aliyuncs.com/upload/360b8539-cc27-4328-a116-7faaa7e67520.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
