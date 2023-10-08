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
              color: Colors.red,
              fontSize: 20,
              fontFamily: 'Oswald',
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.black45,

            child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/me2.jpg"),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xff210D10),
                    Color(0xff802201),
                  ],
                )),
                accountName: Text('Prajjwal Tripathi',
                  style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Oswald',
                ),),
                accountEmail: Text('prajjwalit@gmail.com',
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
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: <Color>[
                Color(0xff210D10),
                Color(0xff802201),

              ],
            )),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('assets/portfolioimg1.png'),
                   height: 200,
                    width: 300,
                  ),
                  const CircleAvatar(
                    radius: 105,
                    backgroundColor: Colors.redAccent,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage("assets/me2.jpg"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                      ('hello my name is Prajjwal Tripathi. \n I am a sophomore at AKGEC, ghaziabad, pursuing my bachelor’s degree  in computer science.'),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        letterSpacing: 1.5,
                        fontFamily: 'Dela',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                      ('I am currently venturing into the field of app development.\nAs a Flutter developer i am excited to explore and work in this domain and build unique projects to showcase my skills. '),
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 22.0,
                        fontFamily: 'Dela',
                      ),
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
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.redAccent// Background color
                        ),
                        child: const Text('My interests')),
                    const SizedBox(width: 20,),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MySkills()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.redAccent// Background color
                        ),
                        child: const Text('My skills')),
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
