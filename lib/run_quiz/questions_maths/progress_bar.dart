import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/run_quiz/questions_maths/question_controller.dart';
import 'package:untitled/run_quiz/questions_maths/questions_maths.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../constants.dart';
class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController_Maths>(
        init: QuestionController_Maths(),
        builder: (controller) {
          print(controller.animation.value);
          return Stack(
            children: [
              // Layout provide us the avilable space for the container
              // constraints.maxwidth need for our animations
              LayoutBuilder(builder: (context, constraints) => Container(
                // from 0 to 1 it take 60sec.
                width: constraints.maxWidth * controller.animation.value, //cover 50%
                decoration: BoxDecoration(
                  gradient: kPrimaryGradient,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),),
              Positioned.fill(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("${(controller.animation.value*60).round()} sec"),
                    WebsafeSvg.asset("assets/clock.svg"),
                  ],
                ),
              ))

            ],
          );
        },
      ),
    );
  }
}