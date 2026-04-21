import 'package:e_youth_flutter1/screens/products_idea/product_details_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
final List<String> products =[
  "Laptop" , 
  "Iphone" , 
  "Headphone", 
  "Pizza" , 
  "Burger" ,

] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen") ,),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context,index){ 
        return ListTile(
          leading: Icon(Icons.shopping_bag, color: Colors.deepOrange,),
          title: Text(products[index]), 
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ProductDetailsScreen(prodName:products[index] ,); 
            })) ;
          },
        ) ; 
      }),
    );
  }
}