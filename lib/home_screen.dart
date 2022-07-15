import 'package:flutter/material.dart';
import 'package:quazapp/question_screens/geography_screen.dart';
import 'package:quazapp/question_screens/history_screens.dart';
import 'package:quazapp/question_screens/mathematics_screens.dart';
import 'package:quazapp/question_screens/science.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
final List images=[
  'images/geg.jpg',
  'images/math.jpg',
  'images/hiso.jpg',
  'images/scince.jpg',
];
 final List titles=[
   'Geography',
   'Mathematics',
   'History',
   'Science'
 ];
 final List screens=[
   GeographyScreen(),
   MathematicsScreen(),
   HistoryScreen(),
   ScienceScreen(),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.88),
      appBar: AppBar(
        title: Text("IQ Test",style:
          TextStyle(fontSize: 28,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
        backgroundColor: Colors.teal,
        centerTitle: true,

      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
          itemBuilder: (context,index)=>InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>screens[index]));
            },
            child: Container(
              margin: EdgeInsets.only(
                top: 30,left: 24,right: 24
              ),
              height: 170,
              width: double.infinity,
              child: Stack(
                children: [
                  Image(image: AssetImage(images[index]),
                  fit: BoxFit.cover,height: 170,width: double.infinity,),
                  Container(
                    padding: EdgeInsets.all(7),
                  color: Colors.teal,
                    child: Text(titles[index],style:
                      TextStyle(fontSize: 28,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white),),
                  )
                ],
              ),
            ),
          ),
          separatorBuilder: (context,index)=>SizedBox(height: 0,),
          itemCount: 4),
    );
  }
}
