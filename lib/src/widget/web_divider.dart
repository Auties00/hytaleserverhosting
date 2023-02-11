import 'package:flutter/material.dart';

class WebDivider extends StatelessWidget {
  WebDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      height: 5.0,
    );
  }
}
