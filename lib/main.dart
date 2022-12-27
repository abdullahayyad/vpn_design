import 'package:flutter/material.dart';
import 'package:vpn_design/Pallete.dart';
import 'package:vpn_design/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primaryColor,
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}
