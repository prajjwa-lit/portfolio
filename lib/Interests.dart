import 'package:flutter/material.dart';


class MyInterest extends StatelessWidget {
  const MyInterest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: const Text("My hobbies and Interests",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Oswald',
          ),
        ),
      ),
      body:
      Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-1, -1),
                end: Alignment(1, 1),
                colors: <Color>[
                  Color(0xff36d1dc),
                  Color(0xff5b86e5),

                ],
          )),
                child: const SingleChildScrollView(
                   child: Column(
                    children: [
                      Text(
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30.0,
                         letterSpacing: 0.3,
                         fontWeight: FontWeight.w500,
                         fontFamily: 'lobster',
                       ),
                      'Beside my work, i do love to spend some time on my hobbies.'
                     ),
                      Text(
                          style: TextStyle(
                            color:Color(0xff000080),
                            fontSize: 25.0,
                            letterSpacing: 0.3,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'lobster',
                          ),

                          '''\n I love playing badminton and i am also a martial artist, currently holding brown belt in karate.
\n I also love watching anime because of it's seamingly boundless creativity and thrill. My favourite anime is Attack on Titans.
\n I also love to explore and watch about latest innovations in tech world, I am particularly excited about space exploration and future of A.I.
\n Lastly i do love to read books occasionally. I have read Harry Potter series,some thrillers from Agatha Christie and some self help books as well.
 My favorite novel series is The diary of wimpy kid :) '''
            ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}