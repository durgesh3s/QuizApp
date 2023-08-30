import 'package:flutter/material.dart';
import 'package:untitled/run_quiz/questions_literature/literature_screens.dart';
import 'package:untitled/run_quiz/questions_maths/math_screens.dart';
import 'package:untitled/screens/homescreen.dart';

import '../../run_quiz/questions_geography/geography_screens.dart';

class quiz extends StatefulWidget {
  const quiz({super.key});

  @override
  State<quiz> createState() => _quizState();
}

class _quizState extends State<quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => homescreen(),),);
          },
        ),
        title: Text('Quiz Option', style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
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
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Math_Quiz_Screen(),),);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 23, left: 23, bottom: 8, top: 23),
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
                            padding: const EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
                            child: Image.asset(
                              'assets/math.png',
                            ),
                          ),

                          Text("Math", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Geography_Quiz_Screen(),),);
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
                            padding: const EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
                            child: Image.asset(
                              'assets/geography.png',
                            ),
                          ),

                          Text("Geography", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Literature_Quiz_Screen(),),);
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
                            padding: const EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
                            child: Image.asset(
                              'assets/literature.png',
                            ),
                          ),

                          Text("Literature", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
