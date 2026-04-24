import 'package:e_youth_flutter1/screens/bmi/first_screen.dart';
import 'package:e_youth_flutter1/screens/products_idea/home_screen.dart';
import 'package:e_youth_flutter1/screens/products_idea/product_details_screen.dart';
import 'package:e_youth_flutter1/screens/theme_screen_test/insta_pay_screen.dart';
import 'package:e_youth_flutter1/screens/theme_screen_test/noon_screen.dart';
import 'package:e_youth_flutter1/screens/theme_screen_test/theme_screen1.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber , 
          brightness: Brightness.light
        )
      ), 
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black , 
          brightness: Brightness.dark
        )
      ),
      themeMode: ThemeMode.system,
      // home: InstaPayScreen(),
      home: NoonProductsScreen(),
    ) ;
  }
  
}


// ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF6A1B9A)) , 



//         textTheme: TextTheme(
//           titleLarge: TextStyle(
//                         fontSize: 24 , 
//                         fontWeight: FontWeight.bold , 
//           ), 
//           bodyMedium: TextStyle(fontSize: 16), 
//         ),


//         appBarTheme: AppBarTheme(
//           centerTitle: true, 
//         ),


//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Color(0xFF6A1B9A) , 
//             foregroundColor: Colors.white , 
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12) , 
//             )
//           )
//         ),

//         useMaterial3: true
//       ),