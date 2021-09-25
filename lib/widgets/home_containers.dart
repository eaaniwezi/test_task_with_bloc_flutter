// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeContainers extends StatelessWidget {
  final String headerText;
  final String subText;
  final Function onTapForNavigating;
  const HomeContainers(
      {Key? key, required this.headerText, required this.subText, required this.onTapForNavigating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        height: 120,
        decoration: BoxDecoration(
            color: Colors.pink.withOpacity(0.1),
            borderRadius: BorderRadius.circular(18)),
        child: InkWell(
          // onTap: () {
          //    Navigator.pushNamed(context, "/second");
          // },
          onTap: () {onTapForNavigating();},
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        headerText,
                        style: GoogleFonts.signikaNegative(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        subText,
                        style: GoogleFonts.signikaNegative(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[800],
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
