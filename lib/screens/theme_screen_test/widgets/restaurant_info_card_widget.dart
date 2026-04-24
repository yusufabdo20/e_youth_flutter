
import 'package:flutter/material.dart';

class RestaurantInfoCard extends StatelessWidget {
  const RestaurantInfoCard({
required this.name , 
required this.description
  });
final String name ;
final String description ;
static const String logo  = "LOGO" ;
  @override
  Widget build(BuildContext context) {
   var textTheme = Theme.of(context).textTheme; 
    return Card(
      color: Colors.white,
      elevation: 50,
      child: Padding(
        padding: const EdgeInsets.all(12) ,
        child: Column(
          children: [
            Text(name, 
            style: textTheme.titleLarge,
            ) , 
            SizedBox(height: 10,) , 
            Text(description, 
            style: textTheme.bodyMedium
            ) , 
            SizedBox(height: 10,) , 
           Text(logo , style: textTheme.headlineLarge,) ,
            SizedBox(height: 10,) , 
           Text(logo , style: textTheme.headlineLarge,)
          ],
        ),
      ),
    );
  }
}
