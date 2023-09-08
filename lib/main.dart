import 'package:app_demo/consts/theme.dart';
import 'package:app_demo/screens/auth_ui/welcome/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData,
      home: const Welcome(),
    );
  }
}
