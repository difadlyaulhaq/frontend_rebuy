import 'package:flutter/material.dart';
class Displaypage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen Two')),
      body: Center(
        child: Text('This is Screen Two'),
      ),
    );
  }
}