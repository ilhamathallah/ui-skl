import 'package:flutter/material.dart';
import 'package:project_flutter/detail_page.dart';
import 'package:project_flutter/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  HomePage();
  }
}