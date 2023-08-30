import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/run_quiz/questions_literature/literature_screens.dart';
import 'package:untitled/run_quiz/questions_literature/question_controller.dart';
import 'package:untitled/screens/pages.dart/quiz.dart';

class ResultScreen extends StatelessWidget {
  // Remove the incorrect 'super.key' parameter from the constructor
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController_literature _qnController3 = Get.put(QuestionController_literature());

    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => quiz()),);
          },
        ),
        backgroundColor: Colors.red[100],
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        elevation: 0,
      ),
      body: Center( // Center the content on the screen
        child: Padding(
          padding: const EdgeInsets.only(bottom: 200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
            children: [
              Text(
                'Score',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: kSecondaryColor),
              ),
              SizedBox(height: 16), // Add some spacing
              Text(
                "${_qnController3.numOfCorrectAns * 10}/${_qnController3.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kSecondaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
