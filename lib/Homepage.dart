import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TextField(
        decoration: InputDecoration(
          hintText: 'Search here',
          
        ),
      ),),
      body: Center(
        child: Text('This is Screen One'),
      ),
    );
  }
}