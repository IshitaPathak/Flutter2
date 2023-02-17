import 'package:flutter/material.dart';
import 'package:bhu_app/pages/home.dart';
import 'package:bhu_app/pages/about.dart';
import 'package:bhu_app/pages/contact.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/home': (context) => Home(),
      '/about': (context) => AboutUs(),
      '/contact': (context) => ContactUs(),
    },
  ));
}
