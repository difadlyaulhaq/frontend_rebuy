import 'dart:async';
import 'package:feimk/dashboard.dart'; // Import your Dashboard widget here
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    // Delayed navigation to Dashboard after 3 seconds
    Timer(
      Duration(seconds: 3),
          () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Dashboard(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: 'RE',
                  style: TextStyle(
                    fontFamily: "Changa",
                    fontSize: 64,
                    color: Color.fromRGBO(255, 155, 80, 1),
                    decoration: TextDecoration.none,
                  ),
                ),
                TextSpan(
                  text: 'BUY',
                  style: TextStyle(
                    fontFamily: 'Changa',
                    fontSize: 64,
                    backgroundColor: Color.fromRGBO(149, 35, 35, 1),
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
