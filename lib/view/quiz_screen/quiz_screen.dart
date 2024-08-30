
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app_clone/view/quiz_screen/widgets/options_card.dart';
import 'package:quiz_app_clone/view/result_screen/result_screen.dart';
// import 'package:lottie/lottie.dart';
// import 'package:quiz_app_clone/utils/color_constants.dart';
// import 'package:quiz_app_clone/view/Quiz_Database.dart';
// import 'package:quiz_app_clone/view/quiz_database/quiz_database.dart';
// import 'package:quiz_app_clone/view/quiz_screen/widgets/options_card.dart';
// import 'package:quiz_app_clone/view/result_screen/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, 
  required this.questionslist});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
  final List questionslist;
}

class _QuizScreenState extends State<QuizScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int rightAnswerCount = 0;
  int wrongAnswerCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _buildAppBarSection(),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(18),
        children: <Widget>[
          _buildQuestionSection(),
          SizedBox(height: 10),
          _buildOptionSelectionSection(),
        ],
      ),
      bottomNavigationBar: _buildNextButtonSection(context),
    );
  }

  AppBar _buildAppBarSection() {
    return AppBar(
      backgroundColor:Colors.black,
      surfaceTintColor: Colors.black,
      actions: <Widget>[
        Text(
          "${questionIndex + 1}/${widget.questionslist.length}",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(width: 20),
      ],
    );
  }

  Widget _buildOptionSelectionSection() {
    return Column(
      children: List.generate(
        4,
        (index) => OptionsCard(
          borderColor: getColor(index),
          questionIndex: questionIndex,
          option: widget.questionslist[questionIndex]["options"][index],
          selectedIcon: selectedAnswerIndex == index
              ? Icons.radio_button_on
              : Icons.radio_button_off,
              onOptionTap: () {
            if (selectedAnswerIndex == null) {
              setState(() {
                selectedAnswerIndex = index;
                if (selectedAnswerIndex ==
                    widget.questionslist[questionIndex]["answer"]) {
                  rightAnswerCount++;
                } else {
                  wrongAnswerCount++;
                }
              });
            }
          },
                    ),
          
        ),
      );
    
  }

  Widget? _buildNextButtonSection(BuildContext context) {
    return selectedAnswerIndex == null
        ? null
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: InkWell(
              borderRadius: BorderRadius.circular(13),
              onTap: () {
                setState(() {
                  selectedAnswerIndex = null;
                  if (questionIndex < widget.questionslist.length - 1) {
                    questionIndex++;
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(
                          rightAnsCount: rightAnswerCount,
                          wrongAnsCount: wrongAnswerCount,
                          
                        ),
                      ),
                    );
                  }
                });
              },
              child: Container(
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1,
                  ),
                ),
              ),
            ),
          );
      
 


  }
   Widget _buildQuestionSection() {
    return Expanded(
      child: Stack(
        children:[ Container(
          height: 200,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(17),
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            widget.questionslist[questionIndex]["questions"],
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
         selectedAnswerIndex == widget.questionslist[questionIndex]["answers"]
        ? LottieBuilder.asset("assets/lotties/Animation - 1724055881817.json",
        
        height: 200,
        width: double.infinity,
        )
        :SizedBox(),
      
        ]
      ),
      
    );
  }
   Color getColor(int index) {
    if (selectedAnswerIndex != null) {
      if (widget.questionslist[questionIndex]["answers"] == selectedAnswerIndex &&
          index == selectedAnswerIndex) {
        return Colors.green;
      } else if (widget.questionslist[questionIndex]["answers"]
       !=
              selectedAnswerIndex &&
          index == selectedAnswerIndex) {
        return Colors.red;
      } else if (widget.questionslist[questionIndex]["answers"] == index) {
        return Colors.green;
      }
    }

    return Colors.grey.shade800;
  }

  
  }

  

  