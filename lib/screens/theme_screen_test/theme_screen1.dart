import 'package:flutter/material.dart';

class ThemeScreen1 extends StatelessWidget {
  const ThemeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Theme Screen 1'),
        // backgroundColor: Colors.amber ,
        // backgroundColor: Color(0xFF355872),
      ),
      body:  Center(
        child:Column(
          children: [
            Text ('Welcome to Theme Screen 1'),
            Container(
              height: 30,
              width: double.infinity,
              // color: Color.fromRGBO(122, 170, 206, 0.8),
            ) ,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){}, child: Text("Pay now") , 
              style:ElevatedButton.styleFrom(
                // backgroundColor: Color.fromARGB(255,156, 213, 255), 
              ) ,),
            )
          ],
        ),
      ),
    );
  }
}