import 'package:flutter/material.dart';

import 'pages/home_page.dart';
// import 'pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
      // home: DetailsPage(),
    );
  }
}
