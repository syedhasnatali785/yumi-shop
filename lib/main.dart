import 'package:flutter/material.dart';
import 'package:yumishop/screens/home/home_screen.dart';
import 'package:yumishop/screens/product_detail/product_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Color(0xfff5f5f5)),
      appBarTheme:AppBarTheme(
       foregroundColor: Colors.black,
      )),

      home:HomeScreen()
    );
  }
}
