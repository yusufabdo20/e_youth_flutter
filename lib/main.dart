import 'package:flutter/material.dart';

void main() {
  var t = Text('Hello World') ; 
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
      home: FirstScreen() ,
    ) ;
  }
  
}


class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        leading: Icon(Icons.account_circle_rounded) , 
        title: Text("Title of Screen"),
        centerTitle: true,
        actions: [
        Icon(Icons.search) ,
        Icon(Icons.notifications) ,  
        ],
      ),

      body: Center(
       child:  Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.amber, 
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
         child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage("assets/images/pic.jpg") ,
              fit: BoxFit.cover
               ) , 
              // Container(
              //   width : 200 , 
              //   height: 200, 
              //   // color: Colors.deepOrange,
              //   decoration: BoxDecoration(
              //     color:Colors.amber, 
              //     borderRadius: BorderRadius.all(Radius.circular(100)), 
              //   ),
              // ) , 
              SizedBox(height: 20,) ,
              Row(
                mainAxisSize: MainAxisSize.min,
                children: 
              [
                Text("Name:" , 
                style: TextStyle(fontWeight: FontWeight.bold),) , 
                 Text("Yusuf" ,),
                  ],
                ) , 
           Row(
                          mainAxisSize: MainAxisSize.min,
         
            children: 
              [
                Text("Age" , 
                style: TextStyle(fontWeight: FontWeight.bold),) , 
                 Text("25" ,),
                  ],
                ) ,  
            ],
          ),
       ) ,
      ),
      // body: Center(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.blue,
      //       ),
      //       Container(
      //         width: 50,
      //         height: 200,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         width: 50,
      //         height: 400,
      //         color: Colors.amber,
      //       ),
      //       Container(
      //         width: 50,
      //         height: 300,
      //         color: Colors.cyan,
      //       ),
      //     ],
      //   ),
      // ),
        // body: Center(
        //   child:Column(
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //     mainAxisAlignment:MainAxisAlignment.start ,
        //     children: [
        //       Container(
        //   color: Colors.amber,
        //   padding: EdgeInsets.all(20),
        //   child: Text("Yusuf" ,
        //    style: TextStyle(
        //       color: Colors.blue ,
        //       fontSize:50 ,
        //       // backgroundColor: Colors.black , 
        //       fontWeight: FontWeight.bold
        //       ),
        //      ),
        // ),
        //       Container(
        //   color: Colors.red,
        //   padding: EdgeInsets.all(20),
        //   child: Text("Ali" ,
        //    style: TextStyle(
        //       color: Colors.blue ,
        //       fontSize:50 ,
        //       // backgroundColor: Colors.black , 
        //       fontWeight: FontWeight.bold
        //       ),
        //      ),
        // ),
        //       Container(
        //   color: Colors.cyan,
        //   padding: EdgeInsets.all(20),
        //   child: Text("Mohammed" ,
        //    style: TextStyle(
        //       color: Colors.blue ,
        //       fontSize:50 ,
        //       // backgroundColor: Colors.black , 
        //       fontWeight: FontWeight.bold
        //       ),
        //      ),
        // ),
        //     ],
        //   ) ) , 
      ) ;
  }
}