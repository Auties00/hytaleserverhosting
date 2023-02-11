import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hosting/src/page/home_page.dart';

import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:collection/collection.dart';

typedef WidgetBuilder = Widget Function(BuildContext context);

void main() {
  usePathUrlStrategy();
  runApp(HytalesHostingApplication());
}

class HytalesHostingApplication extends StatelessWidget {
  final Map<String, WidgetBuilder> _routes =  {
    '/':  (_) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hytale Server Hosting',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: Theme.of(context).colorScheme.copyWith(
          secondary: Color.fromARGB(255, 36, 37, 58),
          background: Color.fromARGB(255, 27, 27, 45)
        )
      ),
      routes: _routes,
      initialRoute: '/'
    );
  }
}
