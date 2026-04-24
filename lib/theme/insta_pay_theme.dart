import 'package:flutter/material.dart';

var instaPayTheme = 

ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF6A1B9A)) , 



        textTheme: TextTheme(
          titleLarge: TextStyle(
                        fontSize: 24 , 
                        fontWeight: FontWeight.bold , 
          ), 
          bodyMedium: TextStyle(fontSize: 16), 
        ),


        appBarTheme: AppBarTheme(
          centerTitle: true, 
        ),


        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF6A1B9A) , 
            foregroundColor: Colors.white , 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12) , 
            )
          )
        ),

        useMaterial3: true
      ) ; 