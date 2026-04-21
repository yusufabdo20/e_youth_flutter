import 'package:e_youth_flutter1/screens/bmi/first_screen.dart';
import 'package:e_youth_flutter1/screens/products_idea/home_screen.dart';
import 'package:e_youth_flutter1/screens/products_idea/product_details_screen.dart';
import 'package:e_youth_flutter1/screens/transfer/transfer_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EyouthApp());
}

class EyouthApp extends StatefulWidget {
  @override
  State<EyouthApp> createState(){
    return _EyouthApp(); 
  }

}
class _EyouthApp extends State<EyouthApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: TransferScreen(),
      // home: ProductHomeScreen(),
      // home: FirstScreen(),
      initialRoute: '/',
      routes: {
        '/': (_){return HomeScreen() ; }, 
        '/product' : (_)=>ProductDetailsScreen(),
        '/trasfer' :(_)=> TransferScreen(), 
        // '/settings' : (_)=>SettingsScreen() ,
      } ,
      // onGenerateRoute: (RouteSettings settings) {
        
      // },
    ) ;
  }
  
}


