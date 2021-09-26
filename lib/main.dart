import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator_with_bloc/bloc/navigation_bloc.dart';
import 'package:navigator_with_bloc/screens/home_page.dart';
import 'package:navigator_with_bloc/screens/second_screen.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final NavCubit _navStateCubit = NavCubit();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigationBloc>(
      lazy: false,
      create: (context) => NavigationBloc(Screen.screen_one),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocBuilder<NavigationBloc, Screen>(
          builder: (context, screen) {
            return _buildScreen(screen);
          },
        ),
      ),
    );
  }

  _buildScreen(Screen screen) {
    if (screen == Screen.screen_one) {
      // ignore: prefer_const_constructors
      return HomePage();
    } else if (screen == Screen.screen_two) {
      // ignore: prefer_const_constructors
      return SecondScreen();
    }
    return Container();
  }
}
