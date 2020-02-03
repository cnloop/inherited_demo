import 'package:flutter/material.dart';
import 'package:inherited_demo/inherited_ctx.dart';
import 'package:inherited_demo/pages/news_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('首页')),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('count==> ${InheritedCtx.of(context).inheritedModal.count}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new NewsPage(),
            ),
          );
        },
      ),
    );
  }
}
