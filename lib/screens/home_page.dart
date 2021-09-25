// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:navigator_with_bloc/widgets/home_containers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      // backgroundColor: Colors.pink[200],
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            HomeContainers(
              headerText: "Track my period",
              subText: "contraception and wellbeing",
              onTapForNavigating: () {
                print("first screen");
              },
            ),
            // ignore: prefer_const_constructors
            HomeContainers(
              headerText: "Get pregnant",
              subText: "learn about reproductive health",
              onTapForNavigating: () {
                print("second screen");
              },
            )
          ],
        ),
      ),
    );
  }
}
