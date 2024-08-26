import 'package:flutter/material.dart';
import 'package:quiz_app_clone/view/Quiz_Database.dart';
import 'package:quiz_app_clone/view/home_screen/home_screen.dart';
// import 'package:quiz_app_clone/utils/color_constants.dart';
// import 'package:quiz_app_clone/view/quiz_database/quiz_database.dart';
// import 'package:quiz_app_clone/view/quiz_screen/quiz_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
    ).then(
      (value) {
        // QuizDatabase.questions.shuffle();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
            body: _buildSplashLogoSection(),
    );
  }

  Widget _buildSplashLogoSection() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            "https://i.pinimg.com/236x/d0/33/30/d0333051d24ff9adba8cc63b100016a9.jpg",
            height: 180,
            width: 200,
          ),
          Text(
            "Quiz App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              letterSpacing: -1.5,
            ),
          ),
        ],
      ),
    );
  }
}