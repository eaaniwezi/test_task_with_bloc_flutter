import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigator_with_bloc/bloc/navigation_bloc.dart';
import 'package:navigator_with_bloc/screens/third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<NavigationBloc, Screen>(
        listener: (context, screen) {},
        builder: (context, screen) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                _textHeader(),
                _calendarContainer(),
                _nextButton(),
              ],
            ),
          );
        },
      ),
    );
  }

  _textHeader() {
    return Center(
      child: Text(
        "Log in your date of birth",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  _calendarContainer() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: CupertinoDatePicker(
        minimumYear: 1600,
        maximumYear: DateTime.now().year,
        initialDateTime: dateTime,
        mode: CupertinoDatePickerMode.date,
        onDateTimeChanged: (dateTime) {
          setState(() {
            this.dateTime = dateTime;
          });
        },
      ),
    );
  }

  _nextButton() {
    return InkWell(
      onTap: () {
        final value = DateFormat('yyyy/MM/dd').format(dateTime);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ThirdScreen(result: value)));
      },
      child: Container(
        height: 52,
        width: 150,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.deepPurple[800]!,
                Colors.deepPurple.withOpacity(0.7),
              ],
            ),
            color: Colors.deepPurple[800],
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Next",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            // SizedBox(width: 50),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Icon(
                    Icons.navigate_next_rounded,
                    color: Colors.deepPurple[800],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
