
import 'package:flutter/material.dart';

class Rule extends StatefulWidget {
  const Rule({super.key});

  @override
  State<Rule> createState() => _RuleState();
}

class _RuleState extends State<Rule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        elevation: 0,
        title:  Text('Rule Book', style: TextStyle(
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
        child: Center(
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 280),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        '1.   Each question will pertain to one one of the three subjects: maths, geography, or literature.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        '2.   Participants must refrain from using any external resources durring the quiz.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        '3.  Questions will be presented in random order to keep participants engaged.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        '4.   Each paritcipants will have a limited time frame (e.g., 60seconds) to answer each questions.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        '5.   Correct answer will earn points, and the participant with the highest score wins.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
