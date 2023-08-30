import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/run_quiz/questions_literature/body.dart';
import 'package:untitled/run_quiz/questions_literature/question_controller.dart';
import 'package:untitled/screens/pages.dart/quiz.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Literature_Quiz_Screen extends StatefulWidget {
  const Literature_Quiz_Screen({super.key});

  @override
  State<Literature_Quiz_Screen> createState() => _Literature_Quiz_ScreenState();
}

class _Literature_Quiz_ScreenState extends State<Literature_Quiz_Screen> {
  @override
  Widget build(BuildContext context) {
    QuestionController_literature _controller = Get.put(QuestionController_literature());
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
