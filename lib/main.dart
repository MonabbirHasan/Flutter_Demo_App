import 'package:flutter/material.dart';
import 'package:flutter_application_9/screen/HomeScreenOne.dart';
// ignore: unused_import
// import 'package:flutter_application_9/screen/HomeScreensTow.dart';
// import 'package:flutter_application_9/screen/Home.dart';
// import 'package:flutter_application_9/screen/HomeScreen.dart';
// import 'package:flutter_application_9/screen/HomeScreenOne.dart';
// import 'package:flutter_application_9/screen/Home.dart';
// import 'package:flutter_application_9/screen/HomeScreen.dart';
// ignore: unused_import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hoverColor: Colors.amber,
      ),
      home: const HomeScreenOne(),
    );
  }
}
