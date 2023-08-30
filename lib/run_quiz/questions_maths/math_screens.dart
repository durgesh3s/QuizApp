import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/run_quiz/questions_maths/body.dart';
import 'package:untitled/run_quiz/questions_maths/question_controller.dart';
import 'package:untitled/screens/pages.dart/quiz.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Math_Quiz_Screen extends StatefulWidget {
  const Math_Quiz_Screen({super.key});

  @override
  State<Math_Quiz_Screen> createState() => _Math_Quiz_ScreenState();
}

class _Math_Quiz_ScreenState extends State<Math_Quiz_Screen> {
  @override
  Widget build(BuildContext context) {
    QuestionController_Maths _controller = Get.put(QuestionController_Maths());
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
