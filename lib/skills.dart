import 'package:flutter/material.dart';


class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("My Skills and academics",
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
            fontFamily: 'Oswald',
          ),
        ),
      ),
    body: Center(
      child: Container(
        height: 800,
        width: 400,
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xff210D10),
                Color(0xff802201),
              ],
            )),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              Text(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 1.5,
                  fontFamily: 'Dela',
                ),
                '''Though a beginner, I have been exploring and trying out new technologies to select my domains. 
I have a decent know-how of html and css for frontend web development. 
I also know C++ language and java and currently i am learning flutter development to make cross platform applications'''
              ),
        Text(
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 20.0,
            fontFamily: 'Dela',
          ),
          '''I have performed quite well in my academics as well. 
 I have secured 95% in my class 10th exams, 94% in 12th board exams and have managed to get a SGPA of just under 8 in my college.'''
        ),
          ],
          ),
        ),
      ),
    ),
    );
  }
}
