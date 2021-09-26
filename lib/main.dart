import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator_with_bloc/screens/home_page.dart';
import 'package:navigator_with_bloc/screens/second_screen.dart';
import 'package:navigator_with_bloc/screens/third_screen.dart';
import 'package:navigator_with_bloc/cubit/cubit/nav_state_cubit.dart';

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
  final NavStateCubit _navStateCubit = NavStateCubit();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavStateCubit>(
      lazy: false,
      create: (context) => NavStateCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => BlocProvider.value(
                value: _navStateCubit,
                // ignore: prefer_const_constructors
                child: HomePage(),
              ),
          '/second': (context) => BlocProvider.value(
                value: _navStateCubit,
                // ignore: prefer_const_constructors
                child: SecondScreen(),
              ),
          // '/third': (context) => BlocProvider.value(
          //       value: _navStateCubit,
          //       // ignore: prefer_const_constructors
          //       child: ThirdScreen(),
          //     ),
        },
      ),
    );
  }

  @override
  void dispose() {
    _navStateCubit.close();
    super.dispose();
  }
}
