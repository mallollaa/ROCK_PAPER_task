import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/pages/my_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //to remove the debug banner
      home: MYHomePage(),
    );
  }
}
