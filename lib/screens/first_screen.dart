
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
   FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
int count = 0 ; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Center(
          child: 
          Column(
            children: [
              Stack(
                children: [CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/images/pic.jpg"),) ,
                Positioned(
                  bottom: 1,
                  right: 5,
                  child: Container( width: 50 , height: 50,
                   decoration:BoxDecoration(
                    color: Colors.green, 
                    borderRadius: BorderRadius.circular(100) , 
                    
                    )  ,
                   
                   ),
                ), 

                 ],
              ) , 
              Container(

                width: 150,
                padding: EdgeInsets.symmetric(horizontal: 20 ,),
                decoration: BoxDecoration(
                  color: Colors.blue , 
                borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.,
                      children: [
                              Stack(
                                children: [
                                  Image(image: AssetImage("assets/images/pic2.jpeg",), 
                                  width: double.infinity , height: 100,
                                  fit: BoxFit.cover,),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.red, 
                                    ),
                                    child: Text("Offer 30 %", style: TextStyle(color: Colors.white),),
                                  )
                                ],
                              ), 
                              Text("Car Brand " ,
                               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),) , 
                              Text("Car Description this car is v . good " , 
                              style: TextStyle(fontSize: 16,),) , 
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(onPressed: (){
                                    count ++ ; 
                                    print(count) ; 
                                    setState((){}); 
                                  }, icon: Icon(Icons.add)) ,

                                  Text("$count"),
                                  IconButton(onPressed: (){
                                    count -- ;
                                    print(count) ; 
                                    setState(() {
                                      
                                    });
                                  }, icon: Icon(Icons.remove)) ,
                                ],
                              ) , 
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black, 
                                  foregroundColor: Colors.white, 
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  ), 

                                  enabledMouseCursor: SystemMouseCursors.click, 
                                  disabledMouseCursor: SystemMouseCursors.forbidden,
                                  
                                ),
                                onHover: (hovered) {
                                  print("Button hovered: $hovered");
                                },
                                onPressed: (){
                                print("Buy Product") ; 
                              }, child: Text("Buy")), 
  ],
),
              ) , 
          
                ListTile(
                  leading: Icon(Icons.person), 
                  title: Text("Ahmed Khaled"),
                  trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
                
                )
            ],
          )
          ),
          ) , 
      ) ;
  } } 


  // GridView.count(crossAxisCount: 3 , children: [
  //           Container(color: Colors.amber,) , 
  //           Container(color: Colors.red,) , 
  //           Container(color: Colors.black,) , 
  //           Container(color: Colors.cyan,) , 
  //           Container(color: Colors.amber,) , 
  //           Container(color: Colors.red,) , 
  //           Container(color: Colors.black,) , 
  //           Container(color: Colors.cyan,) ,
  //         ],)
// SafeArea(
//         child: Center(
//           child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
//           itemBuilder: (context , index ) {
//             return Text("data $index" , style: TextStyle(fontSize: 20),) ;
//           }, 
//           itemCount: 100,
//           )
//           ),
//           ) , 
          
          // body:SafeArea(
//         child: Center(
//           child: GridView(
//             padding: EdgeInsets.all(10) ,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 5 , 
//             crossAxisSpacing: 5,
//             mainAxisSpacing: 10
          
//           ) , children:[
          
//             Container(color: Colors.amber,) , 
//             Container(color: Colors.red,) , 
//             Container(color: Colors.black,) , 
//             Container(color: Colors.cyan,) , 
//             Container(color: Colors.amber,) , 
//             Container(color: Colors.red,) , 
//             Container(color: Colors.black,) , 
//             Container(color: Colors.cyan,) , 
//             Container(color: Colors.amber,) , 
//             Container(color: Colors.red,) , 
//             Container(color: Colors.black,) , 
//             Container(color: Colors.cyan,) , 
//             Container(color: Colors.amber,) , 
//             Container(color: Colors.red,) , 
//             Container(color: Colors.black,) , 
//             Container(color: Colors.cyan,) , 
//             Container(color: Colors.amber,) , 
//             Container(color: Colors.red,) , 
//             Container(color: Colors.black,) , 
//             Container(color: Colors.cyan,) , 
//             Container(color: Colors.amber,) , 
//             Container(color: Colors.red,) , 
//             Container(color: Colors.black,) , 
//             Container(color: Colors.cyan,) , 
//             Container(color: Colors.amber,) , 
//             Container(color: Colors.red,) , 
//             Container(color: Colors.black,) , 
//             Container(color: Colors.cyan,) , 
//             Container(color: Colors.amber,) , 
//             Container(color: Colors.red,) , 
//             Container(color: Colors.black,) , 
//             Container(color: Colors.cyan,) , 
//             Container(color: Colors.amber,) , 
//             Container(color: Colors.red,) , 
//             Container(color: Colors.black,) , 
//             Container(color: Colors.cyan,) , 
//             Container(color: Colors.amber,) , 
//             Container(color: Colors.red,) , 
//             Container(color: Colors.black,) , 
//             Container(color: Colors.cyan,) , 
//             Container(color: Colors.amber,) , 
//             Container(color: Colors.red,) , 
//             Container(color: Colors.black,) , 
//             Container(color: Colors.cyan,) , 
//             Container(color: Colors.amber,) , 
//             Container(color: Colors.red,) , 
//             Container(color: Colors.black,) , 
//             Container(color: Colors.cyan,) , 
//             Container(color: Colors.amber,) , 
//             Container(color: Colors.red,) , 
//             Container(color: Colors.black,) , 
//             Container(color: Colors.cyan,) , 
//             Container(color: Colors.amber,) , 
//             Container(color: Colors.red,) , 
//             Container(color: Colors.black,) , 
//             Container(color: Colors.cyan,) , 
          
//           ]) ),) , 
// SafeArea(
//         child: Center(
//           child: ListView.builder(itemBuilder: 
//           (context , index){ 
//             return   ListTile(
//             contentPadding: EdgeInsets.all(10),
//             leading: CircleAvatar(
//                     radius: 50 ,
//                     backgroundImage: AssetImage('assets/images/pic.jpg' ,),
//                   ), 
//             title:Text("Yusuf Abdulfattah" , style: TextStyle(fontSize: 20 , fontWeight:FontWeight.bold ),), 
//             subtitle: Text("I learn Dart "),
//             trailing: IconButton(
//               onPressed: () {
//               print("CLICK") ; 
//             } , icon : Icon(Icons.arrow_circle_right_sharp)),
            
//            ); 
//           })
//         ),
//       )  ,
// Column(
//             children: [
//               Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 50 , 
//                     backgroundImage: AssetImage('assets/images/pic.jpg'),
//                   ), 
//                   SizedBox(width: 20,), 
//                   Expanded(
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Text("Yusuf Abdulfattah" , style: TextStyle(fontSize: 20 , fontWeight:FontWeight.bold ),), 
//                             Text("My name is Yusuf   ", 
//                             overflow: TextOverflow.ellipsis,
//                             maxLines: 3,
//                             ),
//                           ],
//                         ), 
//                         Text("11:00 PM"),
//                       ],
//                     ),
//                   ), 
//                 ],
//               ), 
//            ListTile(
//             contentPadding: EdgeInsets.all(10),
//             leading: CircleAvatar(
//                     radius: 50 , 
//                     backgroundImage: AssetImage('assets/images/pic.jpg' ,),
//                   ), 
//             title:Text("Yusuf Abdulfattah" , style: TextStyle(fontSize: 20 , fontWeight:FontWeight.bold ),), 
//             subtitle: Text("I learn Dart "),
//             trailing: Icon(Icons.arrow_circle_right_sharp),
//            )
//             ],
//           ),
//         ),
//       )  ,

// Center(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 CircleAvatar(
//                   radius: 50 , 
//                   backgroundImage: AssetImage('assets/images/pic.jpg'),
//                 ), 
//                 SizedBox(width: 20,), 
//                 Expanded(
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Text("Yusuf Abdulfattah" , style: TextStyle(fontSize: 20 , fontWeight:FontWeight.bold ),), 
//                           Text("My name is Yusuf   ", 
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 3,
//                           ),
//                         ],
//                       ), 
//                       Text("data"),
//                     ],
//                   ),
//                 ), 
//               ],
//             ), 
//             Row(
//               children: [
//                 CircleAvatar(
//                   radius: 50 , 
//                   backgroundImage: AssetImage('assets/images/pic.jpg'),
//                 ), 
//                 SizedBox(width: 20,), 
//                 Expanded(
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Text("Yusuf Abdulfattah" , style: TextStyle(fontSize: 20 , fontWeight:FontWeight.bold ),), 
//                           Text("My name is Yusuf   ", 
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 3,
//                           ),
//                         ],
//                       ), 
//                       Text("data"),
//                     ],
//                   ),
//                 ), 
//               ],
//             ), 
//             Row(
//               children: [
//                 CircleAvatar(
//                   radius: 50 , 
//                   backgroundImage: AssetImage('assets/images/pic.jpg'),
//                 ), 
//                 SizedBox(width: 20,), 
//                 Expanded(
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Text("Yusuf Abdulfattah" , style: TextStyle(fontSize: 20 , fontWeight:FontWeight.bold ),), 
//                           Text("My name is Yusuf   ", 
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 3,
//                           ),
//                         ],
//                       ), 
//                       Text("data"),
//                     ],
//                   ),
//                 ), 
//               ],
//             ), 
//           ],
//         ),
//       )  ,
// body: Center(
//     child: ListView.builder(
//       itemCount: 10,
//    itemBuilder: (context, index){
//     return Container(
//       height: 150,
//       child: Text("data $index" , style: TextStyle(fontSize: 40),),) ; 
//    } ,
//    ),),