import 'package:daily_musings/Pages/homepage.dart';

import 'package:daily_musings/Pages/musing_provider.dart';

import 'package:daily_musings/musing_model.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Musing musingItem = Musing(date: "", content: "");

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Daily Musing',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MusingProvider(
          musingData: [],
          
          child: HomePage()),
    );
  }
}
