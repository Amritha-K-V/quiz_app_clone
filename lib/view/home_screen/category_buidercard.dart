import 'package:flutter/material.dart';
import 'package:quiz_app_clone/view/quiz_database.dart';
import 'package:quiz_app_clone/view/quiz_screen/quiz_screen.dart';

class categorybuilder extends StatefulWidget {
  const categorybuilder({
    super.key, 
  });

  @override
  State<categorybuilder> createState() => _categorybuilderState();
}

class _categorybuilderState extends State<categorybuilder> {
 
  @override
  Widget build(BuildContext context) {
    var index;
    return Stack(
      fit: StackFit.expand,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>QuizScreen(questionslist: [],)));
          },
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 QuizDatabase.categorylist[index]["name"],
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        // Positioned(
        //   bottom: 40,
        //   left: 50,
        //   child: SvgPicture.asset(
        //     "assets/images/sports.svg",
        //     height: 150, // height 
        //     width: 150,  // width 
        //   ),
        // ),
      ],
    );
  }
}
