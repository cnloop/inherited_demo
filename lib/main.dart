import 'package:flutter/material.dart';
import 'package:inherited_demo/inherited_ctx.dart';
import 'package:inherited_demo/pages/home_page.dart';

import 'inherited_modal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Index();
  }
}

class Index extends StatefulWidget {
  Index({Key key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  InheritedModal inheritedModal;

  @override
  void initState() {
    super.initState();
    inheritedModal = new InheritedModal(999);
  }

  void add() {
    setState(() {
      inheritedModal = new InheritedModal(inheritedModal.count + 1);
    });
  }

  void reduce() {
    setState(() {
      inheritedModal = new InheritedModal(inheritedModal.count - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedCtx(
      add: add,
      reduce: reduce,
      inheritedModal: inheritedModal,
      child: MaterialApp(
        title: 'Material App',
        home: HomePage(),
      ),
    );
  }
}
