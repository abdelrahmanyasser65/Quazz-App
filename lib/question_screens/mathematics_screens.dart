import 'package:flutter/material.dart';
import 'package:quazapp/result_screen.dart';
import 'package:quazapp/compontes/compontes.dart';
import 'package:quazapp/compontes/const.dart';
class MathematicsScreen extends StatefulWidget {
  const MathematicsScreen({Key? key}) : super(key: key);

  @override
  State<MathematicsScreen> createState() => _MathematicsScreenState();
}

class _MathematicsScreenState extends State<MathematicsScreen> {
 int questionIndex=0;
int totalScore=0;

void answerQuestion (int val){
  totalScore= totalScore+val;
  print(totalScore);
  setState((){
    questionIndex +=1;
  });

}

  @override
  Widget build(BuildContext context) {
    return questionIndex<mathematicsQuestion.length?
    Scaffold(
      appBar:  AppBar(
      title: Text("Mathematics Test",style:
    TextStyle(fontSize: 28,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
    backgroundColor: Colors.teal,
    centerTitle: true,

    ),
      body: Column(
        children: [
          Question(mathematicsQuestion[questionIndex]['questionText']),
          SizedBox(height: 20,),
          ...(mathematicsQuestion[questionIndex]['answers'] as List).map((e) =>
    Answer(e['text'].toString(),
       ()=>answerQuestion(e['score'])
    ))


        ],
      ),
    ):
    ResultScreen(totalScore);
  }
}