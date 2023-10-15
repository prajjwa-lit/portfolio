import 'package:flutter/material.dart';
import 'package:portfolio/Interests.dart';
import 'package:portfolio/skills.dart';

void main() {
  return runApp(const MaterialApp(
    home: MyPortfolio(),
  ));
}
class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          title: const Text(
            "My portfolio",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Oswald',
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Colors.white70,

            child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/me2.jpg"),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-1, -1),
                      end: Alignment(1, 1),
                      colors: <Color>[
                        Color(0xff36d1dc),
                        Color(0xff5b86e5),
                  ],
                )),
                accountName: Text('Prajjwal Tripathi',
                  style: TextStyle(
                    color:Color(0xff000080),
                  fontSize: 20,
                  fontFamily: 'Oswald',
                ),),
                accountEmail: Text('prajjwalit@gmail.com',
                  style: TextStyle(
                    color:Color(0xff000080),
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
                        color:Color(0xff000080),
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
                        color:Color(0xff000080)))),
          ],
        )),
        body: Center(
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('assets/portfolioimg.png'),
                   height: 150,
                    width: 300,
                  ),
                  CircleAvatar(
                    radius: 108,
                    backgroundColor: Colors.white,
                    child: const CircleAvatar(
                      radius: 104,
                      backgroundColor: Colors.indigo,
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage("assets/me2.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                      ('Hello, my name is Prajjwal Tripathi. \n I am a sophomore at AKGEC, ghaziabad, pursuing my bachelor’s degree  in computer science.'),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        letterSpacing: 0.3,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'lobster',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                      ('I am currently venturing into the field of app development.\nAs a Flutter developer i am excited to explore and work in this domain and build unique projects to showcase my skills. '),
                      style: TextStyle(
                        color:Color(0xff000080),
                        fontSize: 25.0,
                        letterSpacing: 0.3,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'lobster',
                      ),
                    ),
                  ),
                  Row(children: <Widget>[
                    ElevatedButton.icon(

                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyInterest()),
                          );
                        },
                        icon: Icon(
                          Icons.add_chart_outlined
                        ),
                        label: Text('My interests',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: 'lobster',
                          ),),
                        style: ElevatedButton.styleFrom(

                          shadowColor: Color(0xffffffff),
                          backgroundColor: Color(0xff000080),
                          foregroundColor: Colors.white// Background color
                        ),

                        ),
                    const SizedBox(width: 20,),
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MySkills()),
                          );
                        },
                      icon: Icon(
                        Icons.account_balance_rounded
                      ),
                        style: ElevatedButton.styleFrom(
                            shadowColor: Color(0xffffffff),
                            backgroundColor: Color(0xff000080),
                            foregroundColor: Colors.white// Background color
                        ),
                        label:  Text('My skills',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: 'lobster',
                          ),
                        ),

                    ),
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
