import 'package:flutter/material.dart';
import 'package:untitled/auth/signin.dart';
import 'package:untitled/screens/pages.dart/edit_password.dart';
import 'package:untitled/screens/pages.dart/history.dart';
import 'package:untitled/screens/pages.dart/quiz.dart';
import 'package:get/get.dart';
import 'package:untitled/screens/pages.dart/rules.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.red[400],
        title: Align(
          alignment: Alignment.topLeft,
          child: Column(children: [
            Text(
              "Home",
              style: TextStyle(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                bottom: 12,
              ),
              child: Text(
                "Hello, sagar123",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ]),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(43),
            topRight: Radius.circular(43),
          ),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28, top: 28, bottom: 8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Menu",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => quiz()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 23, left: 23, bottom: 8),
                child: SizedBox(
                  height: 120,
                  width: 345,
                  child: Card(
                    elevation: 3,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 15, top: 20, bottom: 20),
                            child: Image.asset(
                              'assets/quiz.png',
                            ),
                          ),
                          Text(
                            "Start Quiz",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 120,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 8, left: 23, bottom: 8, top: 3),
                      child: InkWell(
                        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Rule()));},
                        child: Card(
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 8,
                                ),
                                child: Image.asset(
                                  'assets/regulation.png',
                                  height: 60,
                                  width: 60,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Text(
                                  "Rules",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 120,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 23, bottom: 8),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => history()));
                        },
                        child: Card(
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 8, top: 8),
                                child: Image.asset(
                                  'assets/history.png',
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Text(
                                  "History",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 120,
                    width: 200,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: 8, left: 23, bottom: 8),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => edit_pass()));
                        },
                        child: Card(
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 8, top: 8),
                                child: Image.asset(
                                  'assets/edit_password.png',
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Text(
                                  "Edit Password",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => signin()));
                  },
                  child: Expanded(
                    child: SizedBox(
                      height: 120,
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 23, bottom: 8),
                        child: Card(
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8, top: 8),
                                child: Image.asset(
                                  'assets/logout.png',
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Text(
                                  "Logout",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
