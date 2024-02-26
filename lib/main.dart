import 'package:flutter/material.dart';
import 'package:rasail_task/UI/homeScreen.dart';
import 'package:rasail_task/UI/loginScreen.dart';
import 'package:rasail_task/controller/loginController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
