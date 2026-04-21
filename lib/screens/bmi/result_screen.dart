import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({ required this.bmiResult , required this.bmiCategory});
 final String bmiResult  ;
  final String bmiCategory ;  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children: [
          Text("BMI = $bmiResult " ,style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold), ) , 
          Text("Category = $bmiCategory " ,style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold), ) , 
        ],),
      ),
    );
  }
}