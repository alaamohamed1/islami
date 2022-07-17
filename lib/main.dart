import 'package:flutter/material.dart';
import 'package:islami/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: home.routeName   ,
      routes: {
        home.routeName:(c)=>home()
      },

    );
  }
}

