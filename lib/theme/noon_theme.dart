import 'package:flutter/material.dart';

var noonLightTheme = ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber , 
          brightness: Brightness.light
        )
      ) ; 

var noonDarkTheme = ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black , 
          brightness: Brightness.dark
        )
      ) ;

void setThemeMode(bool isDarkMode){
  if(isDarkMode){
    // set dark theme 
  }else{
    // set light theme 
  }


}