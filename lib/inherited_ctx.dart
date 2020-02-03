import 'package:flutter/material.dart';

import 'inherited_modal.dart';

class InheritedCtx extends InheritedWidget {
  // 共享的数据
  final InheritedModal inheritedModal;

  // 加法
  final Function add;

  // 减法
  final Function reduce;

  const InheritedCtx({
    Key key,
    @required this.add,
    @required this.reduce,
    @required this.inheritedModal,
    @required Widget child,
  }) : super(key: key, child: child);

  static InheritedCtx of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedCtx>();
  }

  // 是否rebuild取决于数据是否改变
  @override
  bool updateShouldNotify(InheritedCtx oldWidget) {
    return oldWidget.inheritedModal != inheritedModal;
  }
}
