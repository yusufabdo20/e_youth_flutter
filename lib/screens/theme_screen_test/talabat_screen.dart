import 'package:e_youth_flutter1/screens/theme_screen_test/widgets/restaurant_info_card_widget.dart';
import 'package:flutter/material.dart';

class TalabatScreen extends StatelessWidget {
  const TalabatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Talabat Screen'),
      ),
      body:  Center(
        child: GridView.count(crossAxisCount: 2 , children: [
          RestaurantInfoCard(
            name: "TTTTT",
            description: "ddddddd",
          ), 
          RestaurantInfoCard(
            name: "طلبات مارت",
            description: "وصف لطلبات مارت",
          ), 
         
          RestaurantInfoCard(
            name: "duduudud",
            description: "llfllflfl",
          ), 
         
          RestaurantInfoCard(
            name: "PPPPPPP",
            description: "ccncncnc",
          ), 
         
          RestaurantInfoCard(
            name: "AAAAA",
            description: "dldlldldld",
          ), 
         
          RestaurantInfoCard(
            name: "pfppfpfp",
            description: "kdkkdk",
          ), 
         

        ],)     ),
    );
  }
}

