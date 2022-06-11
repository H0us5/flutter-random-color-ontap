import 'package:flutter/material.dart';
import 'package:solid_test_app/pages/my_home_page.dart';

void main() => runApp(MyApp());

/// Main class to our test amplication.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid Test Task',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        textTheme: const TextTheme(
          caption: TextStyle(fontSize: 26.0, color: Colors.black),
        ),
        fontFamily: 'Georgia',
      ),
      home: const MyHomePage(
        title: "Solid Test Task",
      ),
    );
  }
}
