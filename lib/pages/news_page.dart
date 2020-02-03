import 'package:flutter/material.dart';
import 'package:inherited_demo/inherited_ctx.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
      body: Center(
        child:
            Text('count==> ${InheritedCtx.of(context).inheritedModal.count}'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.update),
        onPressed: () {
          InheritedCtx.of(context).reduce();
        },
      ),
    );
  }
}
