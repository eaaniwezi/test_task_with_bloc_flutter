// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  final String result;
  const ThirdScreen({Key? key, required this.result}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            Text("Your date of birth is"),
            // ignore: prefer_const_constructors
            Text(widget.result)
          ],
        ),
      ),
    );
  }
}
