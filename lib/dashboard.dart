import 'package:feimk/shopage.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        Positioned(
          top: 170,
          child: Image.asset("assets/logodash.png"),
        ),
        Positioned(
            top: 400,
            left: 20,
            child: Text("SELLS \nYOUR \nGOODS\nHERE.",
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.w600,
              ),
            )
        ),
        Positioned(
          top: 690,
          left: 200,
          child: GestureDetector(
            onTap: () {
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Shopage() ,));
            },
            child: Image.asset(
              "assets/arrow.png",
              height: 60,
              width: 60,
            ),
          ),
        )

      ],
      ),
    );
  }
}
