import 'package:flutter/material.dart';
import 'package:my_instgram/pages/home_page.dart';

void main() {
  runApp(MyInstagramApp());
}

class MyInstagramApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}
