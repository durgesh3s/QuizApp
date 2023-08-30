import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/run_quiz/questions_literature/progress_bar.dart';
import 'package:untitled/run_quiz/questions_literature/question_card.dart';
import 'package:untitled/run_quiz/questions_literature/question_controller.dart';
import 'package:untitled/run_quiz/questions_literature/questions_literature.dart';
import 'package:websafe_svg/websafe_svg.dart';

class body extends StatelessWidget {
  const body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    QuestionController_literature _questionController = Get.put(QuestionController_literature());
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 9),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProgressBar(),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(() => Text.rich(
                TextSpan(
                  text: "Question ${_questionController.questionNumber.value}",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: kSecondaryColor),
                  children: [
                    TextSpan(
                        text: "/${_questionController.questions.length}",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(color: kSecondaryColor)),
                  ],
                ),
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 23, left: 23),
              child: Divider(
                thickness: 1.5,
              ),
            ),
            SizedBox(height: kDefaultPadding),
            Expanded(
                child: PageView.builder(
                  // block swipe to next questions
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                 onPageChanged: _questionController.updateTheQnNum,
                 itemCount: _questionController.questions.length,
                 itemBuilder: (context, index) => QuestionCard(
                question: _questionController.questions[index],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
