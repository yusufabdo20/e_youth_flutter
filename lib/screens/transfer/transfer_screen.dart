import 'package:e_youth_flutter1/screens/transfer/confirmation_screen.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatefulWidget {
  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
String status = "waiting" ;

Future<void> goToConfirm()async{
  bool? confirmed = await Navigator.push(context , MaterialPageRoute(builder: (_){
    return ConfirmationScreen(); 
  })) ; 
  if(confirmed==true){
    status = "success" ;
    setState(() {
      
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text("Success , 1000\$ Transfered Successfuly") , backgroundColor: Colors.green, )
    ) ;
  }else{
    status = "failed" ;
    setState(() {
      
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text("Failed , Cant trabsfer 1000\$ ") , backgroundColor: Colors.red, )
    ) ; 
  }
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
          status ,
          style: TextStyle(
            fontSize: 25 , 

          ),
          ) , 
          SizedBox(height: 20,) , 
          ElevatedButton(onPressed: (){
            goToConfirm() ;
          }, child:Text('Transfer 1000 \$') ) , 

        ],
       ),
     ),
    );
  }
}