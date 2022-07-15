import 'package:flutter/material.dart';
class ResultScreen extends StatelessWidget {
  var score;
  ResultScreen(this.score);
  String get resultPhrase{
    String resultText;
    if(score>=70){
      resultText='You are awesome !';
    }
    else if(score>=40){
      resultText='Pretty likable !';
    }
    else{
      resultText='You are so bad !';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Result Test $score",style:
        TextStyle(fontSize: 28,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
        backgroundColor: Colors.teal,
        centerTitle: true,

      ),
      body: Center(
        child: Text('$score'),
      ),
    );
  }
}
