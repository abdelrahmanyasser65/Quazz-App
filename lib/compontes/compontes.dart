import 'package:flutter/material.dart';
class Question extends StatelessWidget {
final String mathQuestionText;
 const Question(this.mathQuestionText, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 15,vertical: 30
      ),
      child: Text(mathQuestionText,
      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
    );
  }
}


class Answer extends StatelessWidget {
final String answerText;
final  x;
 const Answer(this.answerText,this.x, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 15,vertical: 2
      ),
      child: ElevatedButton(
        onPressed:x,
        child: Text(answerText),
        style: ElevatedButton.styleFrom(
          primary: Colors.teal,
          onPrimary: Colors.white
        ),
      ),
    );
  }
}

