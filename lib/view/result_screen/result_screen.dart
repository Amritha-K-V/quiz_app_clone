import 'package:flutter/material.dart';
import 'package:quiz_app_clone/view/dummy_db.dart';
import 'package:quiz_app_clone/view/home_screen/home_screen.dart';
// import 'package:quiz_app_clone/view/Quiz_Database.dart';
// import 'package:quiz_app_clone/utils/color_constants.dart';
// import 'package:quiz_app_clone/view/quiz_database/quiz_database.dart';
// import 'package:quiz_app_clone/view/quiz_screen/quiz_screen.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {super.key, required this.rightAnsCount, required this.wrongAnsCount,
      
      });

  final int rightAnsCount;
  final int wrongAnsCount;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int starCount = 0;
  void initstate(){
    starCount = calPercentage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildStarViewSection(),
            _buildScoreViewSection(),
            _buildRestartButtonSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildStarViewSection() {
    return Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Padding(
                padding:
                     EdgeInsets.only(
                      bottom: index == 1 ? 20: 0,
                      left: 15,
                      right: 15,
                    ),
                child: Icon(
                  Icons.star_purple500_sharp,
                  color: index < starCount ? Colors.amber : Colors.grey,
                  size: index == 1 ? 80 : 50,
                ),
              ),
            ),
          );
  }

  Widget _buildScoreViewSection() {
    return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  _getString(),
              
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1,
                  ),
                ),
              ),



              // Text(
                
              //   "${widget.rightAnsCount} / ${w.length}",
              //   style: TextStyle(
              //     color: Colors.green,
              //     fontSize: 32,
              //     fontWeight: FontWeight.w500,
              //     letterSpacing: -1.7,
              //   ),
              // ),
              SizedBox(height: 15),
              Text(
                "Correct Answers: ${widget.rightAnsCount}",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                "Wrong Answers: ${widget.wrongAnsCount}",
                style: TextStyle(
                  color: Colors.white,
                ),
                
              ),
              Text(
                "Skipped Questions: 0",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          );
  }

  Widget _buildRestartButtonSection(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.fromLTRB(25, 24, 25, 0),
            child: InkWell(
              borderRadius: BorderRadius.circular(13),
              onTap: () {
              // QuizDatabase.questions.shuffle();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(
                      // questionslist: [],
                    ),
                  ),
                );
              },
              child: Container(
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(width: 2.8, color: Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.replay,
                      color: Colors.white,
                      size: 26,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Restart",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.7,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  String _getString() {
    if (widget.rightAnsCount > dummy_db.categorylist.length / 2) {
      return "Congratulations !";
    } else {
      return "Better Luck Next Time 👍";
    }
  }
  int calPercentage(){
    double percentage =
    (widget.rightAnsCount / dummy_db.categorylist.length) * 100;
  print("percentage=$percentage%",);

  if(percentage >= 80){
return 3;
  }else if(percentage >= 50){
    return 2;

  }else if(percentage >= 30){
    return 1;
  }else {
    return 0;
  }
  }
}
