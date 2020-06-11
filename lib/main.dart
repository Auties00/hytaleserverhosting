import 'package:flutter/material.dart';
import 'package:hosting/src/page/home_page.dart';
import 'package:hosting/src/page/login_page.dart';
import 'package:hosting/src/page/register_page.dart';

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

      routes: {
        '/' : (_) => HomePage(),
        '/login' : (_) => LoginPage(),
        '/register' : (_) => RegisterPage()
      },

      initialRoute: '/',
    );
  }
}
