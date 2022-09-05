import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Drawer组件'),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('mmh'),
              accountEmail: const Text('hemingming666@gmail.com'),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://wx-login.oss-cn-shanghai.aliyuncs.com/upload/avatar/avatar4.jpg'),
              ),
              decoration: const BoxDecoration(
                color: Colors.pink,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://wx-login.oss-cn-shanghai.aliyuncs.com/2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              otherAccountsPictures: <Widget>[
                Image.network(
                  "https://wx-login.oss-cn-shanghai.aliyuncs.com/1.jpg",
                ),
                Image.network(
                  "https://wx-login.oss-cn-shanghai.aliyuncs.com/1.jpg",
                ),
                Image.network(
                  "https://wx-login.oss-cn-shanghai.aliyuncs.com/1.jpg",
                ),
              ],
            ),
            const ListTile(
              title: Text("个人中心"),
              leading: CircleAvatar(child: Icon(Icons.people)),
            ),
            const Divider(),
            const ListTile(
              title: Text("系统设置"),
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/search');
              },
              child: const ListTile(
                title: Text("搜索"),
                leading: CircleAvatar(
                  child: Icon(Icons.search),
                ),
              ),
            )
          ],
        ),
      ),
      endDrawer: const Drawer(
        child: Text('右侧侧边栏'),
      ),
    );
  }
}
