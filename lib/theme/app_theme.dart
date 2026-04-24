import 'package:flutter/material.dart';
  bool isDarkMode = false ;

var appThemeLight= ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF6A1B9A)) , 

       textTheme:textTheme , 
       fontFamily: fontFamilyCairo,

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


var appThemeDark = ThemeData(
) ; 
const String fontFamilyCairo = 'Cairo' ; 

      var textTheme = TextTheme(
        
          headlineLarge: TextStyle(
            fontSize: 32 , 
            fontWeight: FontWeight.bold , 
            fontStyle: FontStyle.italic
          ), 
          titleLarge: TextStyle(
            fontSize: 22 , 
            fontWeight: FontWeight.w700 , 
          ), 
          bodyMedium: TextStyle(
            fontSize: 14 , 
            color: Colors.red, 
          ), 
          labelLarge: TextStyle(
            fontSize: 16 ,
            fontWeight: FontWeight.bold, 
          )
        ) ;