import 'package:e_youth_flutter1/screens/theme_screen_test/widgets/restaurant_info_card_widget.dart';
import 'package:e_youth_flutter1/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TalabatScreen extends StatefulWidget {
  const TalabatScreen({super.key});

  @override
  State<TalabatScreen> createState() => _TalabatScreenState();
}

class _TalabatScreenState extends State<TalabatScreen> {
  bool isListView =false ; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Talabat Screen'),
      ),
      body:  Center(
        child: Column(
          children: [
            Switch(
              activeThumbColor:Colors.red,
              thumbIcon :WidgetStateProperty.all(Icon(Icons.trending_up
              )),
              value: isListView, onChanged: (value) {
               setState(() {
                                isListView =  value;
                                print(isListView) ; 
                                print("VALUE : $value"); 

               });

            }),
            SizedBox(
              height: 500,
              child: isListView ? 
              ListView.builder(itemBuilder:  (context, index) {
                  return RestaurantInfoCard(name: "ddddd", description: "description") ; 
                },) : 
                GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
                itemBuilder: (context, index) {
                  return RestaurantInfoCard(name: "ddddd", description: "description") ; 
                }
              ),
            ),
          ],
        )     ),
    );
  }
}

