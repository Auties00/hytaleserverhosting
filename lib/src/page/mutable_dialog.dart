import 'package:flutter/material.dart';
import 'package:hosting/src/page/register_dialog.dart';

import 'login_dialog.dart';

class MutableDialog extends StatefulWidget {
  final bool register;

  const MutableDialog({Key? key, required this.register}) : super(key: key);

  @override
  _MutableDialogState createState() => _MutableDialogState();
}

class _MutableDialogState extends State<MutableDialog> {
  late bool _register;

  @override
  void initState() {
    _register = widget.register;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: _register ? RegisterDialog(onSwitch: () => setState(() => _register = false))
          : LoginDialog(onSwitch: () => setState(() => _register = true))
    );
  }
}
