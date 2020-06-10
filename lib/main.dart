import 'package:flutter/material.dart';
import 'package:hosting/src/page/home_page.dart';

void main() {
  runApp(HytalesHostingApplication());
}

class HytalesHostingApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hytales Hosting',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage()
    );
  }
}
