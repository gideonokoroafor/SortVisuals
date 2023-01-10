// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:sorting_visualizer/SortScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: neumorphicDefaultDarkTheme,
      themeMode: ThemeMode.dark,
      home: SortScreen(),
    );
  }
}