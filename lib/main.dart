import 'package:flutter/material.dart';
import 'package:portfolio/Interests.dart';
import 'package:portfolio/skills.dart';

void main() {
  return runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyPortfolio(),
  ));
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "My portfolio",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Oswald',
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.transparent,

            child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/me.jpg"),
                ),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xfff44369),
                    Color(0xff3e3b92),
                    //   Color(0xff00d4ff),
                    //   Color(0xff00bbbb),
                    //    Color(0xff00aaaa),
                  ],
                )),
                accountName: Text('Prajjwal Tripathi',
                  style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Oswald',
                ),),
                accountEmail: Text('p@gmail.com',
                  style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Oswald',
                ),)),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyInterest()),
                  );
                },
                child: const Text("Hobbies and interests",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Oswald',
                        color: Colors.white,
                    ), )),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MySkills()),
                  );
                },
                child: const Text("Skills and academics",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Oswald',
                        color: Colors.white))),
          ],
        )),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: <Color>[
                Color(0xfff44369),
                Color(0xff3e3b92),
                //   Color(0xff00d4ff),
                //   Color(0xff00bbbb),
                //    Color(0xff00aaaa),
              ],
            )),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('assets/portfolioimage.png'),
                  ),
                  CircleAvatar(
                    radius: 105,
                    backgroundColor: Colors.black,
                    child: const CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage("assets/me.jpg"),
                    ),
                  ),
                  const Text(
                    ('hello my name is Prajjwal Tripathi. \n I am a sophomore at AKGEC, ghaziabad, pursuing my bachelor’s degree  in computer science.'),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      letterSpacing: 1.5,
                      fontFamily: 'Dela',
                    ),
                  ),
                  const Text(
                    ('I am currently venturing into the field of app development. As a Flutter developer i am excited to explore and work in this domain and build unique projects to showcase my skills '),
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20.0,
                      fontFamily: 'Dela',
                    ),
                  ),
                  Row(children: <Widget>[
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyInterest()),
                          );
                        },
                        child: Text('My interests')),
                    SizedBox(width: 20,),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MySkills()),
                          );
                        },
                        child: Text('My skills')),
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
