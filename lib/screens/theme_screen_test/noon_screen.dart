import 'package:flutter/material.dart';

class NoonProductsScreen extends StatelessWidget {
  const NoonProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme ; 
    return Scaffold(
      appBar: AppBar(title: Text("Product screen"),), 
      body: Center(
        child: Card(
          color: colorScheme.primary,
          
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Buy now"  , 
            style: TextStyle(
              color: colorScheme.surface, 
            ),),
          ), 
        ),
      ),
      
      
         );
  }
}