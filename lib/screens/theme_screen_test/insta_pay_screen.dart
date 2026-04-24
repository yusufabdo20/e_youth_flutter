import 'package:flutter/material.dart';

class InstaPayScreen extends StatelessWidget {
  const InstaPayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('InstaPay Screen'),
      ),
      body:  Center(
        child: Column(
          children: [
            Text('Welcome to InstaPay Screen'),
            ElevatedButton(onPressed: (){}, child: Text("Pay"))
          ],
        ),      ),

        floatingActionButton: FloatingActionButton(
        onPressed: (){} ,  
        child: Icon(Icons.monetization_on),),
    );
  }
}