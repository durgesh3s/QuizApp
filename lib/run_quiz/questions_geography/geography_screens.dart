import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/run_quiz/questions_geography/body.dart';
import 'package:untitled/run_quiz/questions_geography/question_controller.dart';
import 'package:untitled/screens/pages.dart/quiz.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Geography_Quiz_Screen extends StatefulWidget {
  const Geography_Quiz_Screen({super.key});

  @override
  State<Geography_Quiz_Screen> createState() => _Geography_Quiz_ScreenState();
}

class _Geography_Quiz_ScreenState extends State<Geography_Quiz_Screen> {
  @override
  Widget build(BuildContext context) {
    QuestionController_geo _controller = Get.put(QuestionController_geo());
    return Scaffold(
      backgroundColor: Colors.red[100],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black38,
        ),
        elevation: 0,
        backgroundColor: Colors.red[100],
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: (){_controller.nextQuestion();},
                child: Text(
                  "Skip",
                  style: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
          ),
        ],
      ),
      body: body(),
    );
  }
}
