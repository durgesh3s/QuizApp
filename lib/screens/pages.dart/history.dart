import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../run_quiz/questions_geography/question_controller.dart';
import '../../run_quiz/questions_literature/question_controller.dart';
import '../../run_quiz/questions_maths/question_controller.dart';

class history extends StatefulWidget {
  const history({super.key});

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  @override
  Widget build(BuildContext context) {
    QuestionController_geo _qnController2 = Get.put(QuestionController_geo());
    QuestionController_literature _qnController3 = Get.put(QuestionController_literature());
    QuestionController_Maths _qnController = Get.put(QuestionController_Maths());
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red[400],
        title: Text('History', style: TextStyle(fontWeight: FontWeight.bold),),
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
              padding: const EdgeInsets.only(right: 23, left: 23, bottom: 8, top: 63),
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Math", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text( "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,),)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Padding(
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

                        Text("Geography", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,),),
                        Padding(
                          padding: const EdgeInsets.only(left: 55),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text("${_qnController2.numOfCorrectAns * 10}/${_qnController2.questions.length * 10}",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,),)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Padding(
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

                        Text("Literature", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,),),
                        Padding(
                          padding: const EdgeInsets.only(left: 65),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text( "${_qnController3.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,),)),
                        ),
                      ],
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
