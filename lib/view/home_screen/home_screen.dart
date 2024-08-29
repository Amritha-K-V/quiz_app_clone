import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app_clone/view/dummy_db.dart';
import 'package:quiz_app_clone/view/home_screen/category_buidercard.dart';
import 'package:quiz_app_clone/view/quiz_screen/quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi John",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              Text(
                "Let's make this day productive",
                style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
              ),
            ],
          ),
          actions: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/236x/e8/7a/b0/e87ab0a15b2b65662020e614f7e05ef1.jpg",
              ),
            ),
          ],
        ),
        
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's play",
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(8),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) => categorybuilder(
                    image: dummy_db.categorylist[index]["image"],
                    name: dummy_db.categorylist[index]["name"],
                    ongridtap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>QuizScreen(questionslist: dummy_db.categorylist[index]["list"],)));
          },
                  ),
                  itemCount: dummy_db.categorylist.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

