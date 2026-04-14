import 'package:flutter/material.dart';
// In this Flutter project, we explored the fundamentals of building a mobile app using Dart and Flutter. Here's what we learned from the main.dart file:

// App Structure: Every Flutter app starts with a main() function that calls runApp() to launch the app. We used a StatefulWidget (EyouthApp) for the root, which allows the app to manage state changes.

// MaterialApp: This is the foundation of a Material Design app. We disabled the debug banner and set the home screen to FirstScreen.

// StatelessWidget: FirstScreen is a stateless widget, meaning it doesn't change over time. It builds a UI once using the build() method.

// Scaffold: This provides the basic structure for a screen, including an AppBar (with a leading icon, centered title, and action icons like search and notifications) and a body.

// Layout Widgets: We used Center to center content, Container for styling (padding, color, rounded corners), Column for vertical arrangement, and Row for horizontal layout. We also added spacing with SizedBox.

// Basic Widgets: Text for displaying text with styles (like bold), and Image to load assets from the images folder.

// Styling: We applied colors (e.g., amber), padding, border radius, and alignment properties to make the UI visually appealing.
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