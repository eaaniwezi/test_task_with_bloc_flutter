// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator_with_bloc/bloc/navigation_bloc.dart';
import 'package:navigator_with_bloc/widgets/home_containers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<NavigationBloc, Screen>(
        builder: (context, screen) {
          return Padding(
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
                    BlocProvider.of<NavigationBloc>(context).add(1);
                  },
                ),
                // ignore: prefer_const_constructors
                HomeContainers(
                  headerText: "Get pregnant",
                  subText: "learn about reproductive health",
                  onTapForNavigating: () {
                    BlocProvider.of<NavigationBloc>(context).add(1);
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
