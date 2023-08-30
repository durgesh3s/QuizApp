import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/run_quiz/questions_geography/questions_geography.dart';
import 'package:untitled/run_quiz/questions_geography/result_screen.dart';

class QuestionController_geo extends GetxController
    with SingleGetTickerProviderMixin {
  // lets animated our progress bar
  late AnimationController _animationController;
  late Animation _animation;

  // so that we can access our animation outside
  Animation get animation => this._animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> _questions = sample_data
      .map(
        (question) =>
        Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index']),
  )
      .toList();

  List<Question> get questions => this._questions;

  bool _isAnswered = false;

  bool get isAnswered => this._isAnswered;

  late int _correctAns;

  int get correctAns => this._correctAns;

  late int _selectedAns;

  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;

  RxInt get questionNumber => this._questionNumber;

  late int _numOfCorrectAns = 0;

  int get numOfCorrectAns => this._numOfCorrectAns;


  // called imediately after the widget is allocated memory
  @override
  void onInit() {
    // our animation duration is 60sec
    // so our plan is to fill the  progress bar within 60s,
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        // update like setState
        update();
      });

    // once 60s is progress bar over jump to next qn
    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();

    //start our animation
    // _animationController.forward();
    // _animationController.forward();
    super.onInit();
  }


  // class just before the controller is deleted from memory
  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    // because once user press any option then it will run
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;
    // it will stop the counter
    _animationController.stop();
    update();

    // once user select the option then after 3s it will go to the next qn
    Future.delayed(Duration(seconds: 1),(){
    nextQuestion();
    });
  }

  void nextQuestion(){
    if(_questionNumber.value != _questions.length)
      {
        _isAnswered = false;
        _pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.ease);
        //reset the counter
        _animationController.reset();
        // them start it again
        // once timer is done go to the next qn
        _animationController.forward().whenComplete(nextQuestion);
      }else {
      Get.to(ResultScreen());
    }
  }

  void updateTheQnNum(int index){
    _questionNumber.value = index + 1;
  }
}


