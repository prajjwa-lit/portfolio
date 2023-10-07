import 'package:flutter/material.dart';


class MyInterest extends StatelessWidget {
  const MyInterest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My hobbies and Interests"),
      ),
      body: Text(
          style: TextStyle(
              color: Colors.red,
              backgroundColor: Colors.cyan

          ),
          "hello my name is prajjwal"
      ),
    );
  }
}