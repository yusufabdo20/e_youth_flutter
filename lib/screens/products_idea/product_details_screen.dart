import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  // const ProductDetailsScreen({
  //   required this.prodName
  // });
// final String prodName ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product screen"), 
        leading: IconButton(onPressed: (){
          Navigator.pop(context) ; 
        }, icon: Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.phone_iphone, size: 100, color: Colors.deepOrange,),
          SizedBox(height: 16,) , 
          Text("prodName" , style: TextStyle(fontSize: 18, color: Colors.black , fontWeight: FontWeight.bold)) , 
          SizedBox(height: 9,)  , 
            Text('السعر: ٣٢٠٠ جنيه', style: TextStyle(fontSize: 18, color: Colors.grey)),
          IconButton(onPressed: (){
            Navigator.pop(context) ; 
          }, icon: Icon(Icons.arrow_back)), 
        ],
      ),),
    );
  }
}