import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ur/screens.dart';


void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return My_App_Screen();
  }
}
