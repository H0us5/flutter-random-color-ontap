import 'dart:math';
import 'package:flutter/material.dart';

/// Our home page.
class MyHomePage extends StatefulWidget {
  /// Init title.
  const MyHomePage({required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _colorContainer = Colors.blue;
  final _random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: InkWell(
          child: Container(
            color: _colorContainer,
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: Text(
                'Hey there',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ),
          onTap: () {
            setState(() {
              const max = 256;
              _colorContainer = Color.fromARGB(
                _random.nextInt(max),
                _random.nextInt(max),
                _random.nextInt(max),
                _random.nextInt(max),
              );
            });
          },
        ),
      ),
    );
  }
}
