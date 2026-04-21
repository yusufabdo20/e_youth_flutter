import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("Confirm Transfer"),),
body: Center(
  child: Column(
    children: [
      Text("Conirm ro transfer 1000 \$") , 
      SizedBox(height: 30,) , 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(onPressed:(){
            Navigator.pop(context, true) ; 
          } , child: Text("Confirm"),
           style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green , 
            foregroundColor: Colors.white
           ),) , 
          ElevatedButton(onPressed:(){
            Navigator.pop(context, false) ; 
          } , child: Text("Cancel"), 
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red , 
            foregroundColor: Colors.white
           ),) ,
        ],
      )
    ],
  ),
),
    ) ;
  }
}