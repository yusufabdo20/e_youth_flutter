
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
   FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
bool isMale =true ; 
double height = 170 ; 
int weight = 70 ; 
int age =20 ; 
var result = "" ;
String category = '';
void reset(){
  isMale =true ;
  height =170 ;
  weight=70 ; 
  age = 20 ; 
  result=""; 

setState(() {
  
});
}
void calcBMI(){ 
double hM = height/100 ; 
double bmi = weight / (hM * hM) ; 
result = bmi.toStringAsFixed(1) ; 
switch(bmi){
  case <=17 : 
 category = "moderate and severe thinness " ; 
 break ; 
  case <=18.5 : 
 category = "under weight" ; 
 break ; 
  case >18.5 && <= 24.9 : 
 category = "Normal" ; 
 break ; 
  case >=25 : 
 category = "Overweight" ; 
 break ; 
  case >=30 : 
 category = "Obesity" ; 
 break ; 
 default:
 category= "NONE" ; 
 break ; 
}
}
// BMI <17.0: moderate and severe thinness.
// BMI <18.5: underweight.
// BMI 18.5–24.9: normal weight.
// BMI ≥25.0: overweight.
// BMI ≥30.0: obesity.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Center(
          child: 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                isMale =true ; 
                                print(isMale);
                            setState(() {
                              
                            });
                              },
                              child: Card(
                                color: isMale==true ? Colors.green : Colors.red,
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.male , size: 100,) ,
                                      Text("Male", style: TextStyle(
                                        fontSize: 30, 
                                        fontWeight: FontWeight.bold
                                      ),) , 
                                    ],
                                  ),
                                ) ,
                              ),
                            ),
                          ) ,
                          
                          
                          
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                isMale =false ; 
                                print(isMale) ;
                                setState(() { });
                                 },
                              child: Card(
                                color: isMale==false ? Colors.green : Colors.red,
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.female , size: 100,) ,
                                      Text("Female", style: TextStyle(
                                        fontSize: 30, 
                                        fontWeight: FontWeight.bold
                                      ),) , 
                                    ],
                                  ),
                                ) ,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ) ,
                
                    SizedBox(height: 20, ), 
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(10),
                       decoration: BoxDecoration(
                        color:Colors.grey , 
                        borderRadius: BorderRadius.circular(16)
                       ), 
                       child: Column(
                        children: [
                          Text("Height" , style: TextStyle(
                            fontSize: 30 , 
                            fontWeight: FontWeight.bold, 
                          ),) , 
                          
                          Text("${height.round()} cm" , style: TextStyle(
                            fontSize: 30 , 
                          ),) , 
                          Slider(
                            min: 100,
                            max: 300,
                            value: height, 
                            onChanged: (newHeieght){
                            height = newHeieght ;
                            setState(() {
                              
                            });
                          }) , 
                        ],
                       ),
                      ),
                    ) , 
                    SizedBox(height: 20,) , 
                    Expanded(
                      flex: 1,
                      child: Row(
                            children: [
                              Expanded(
                                child: buildCounterCard(
                                  title: "Weight" ,
                                  value: weight , 
                                  onIncrease: () {
                                   weight++ ; 
                                   print(weight) ; 
                                   setState(() {
                                     
                                   });
                                  },
                                  onDecrease: () {
                                    weight-- ;
                                    print(weight); 
                                    setState(() {
                                      
                                    });
                                  },
                                ),
                              ) , 
                              Expanded(
                                child: buildCounterCard(
                                  title: "Age" ,
                                  value: age , 
                                  onIncrease: () {
                                   age++ ; 
                                   print(age) ; 
                                   setState(() {
                                     
                                   });
                                  },
                                  onDecrease: () {
                                    age-- ;
                                    print(age); 
                                    setState(() {
                                      
                                    });
                                  },
                                ),
                              ) , 
                            ],
                          ),
                    ), 
                    SizedBox(height: 20,) , 
                    result.isEmpty ?  SizedBox() : 
                    ElevatedButton(onPressed: (){
                      reset(); 
                    }, child: Text("RESET")) , 
                   result.isEmpty ? SizedBox() :  Expanded(
                     child: Container(
                          width: double.infinity,
                          height: 50,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.amber, 
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("BMI NUM = " , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),) , 
                                  Text(result, style: TextStyle(fontSize: 20 )),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Category= " , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),) , 
                                  Flexible(child: Text(category, style: TextStyle(fontSize: 20 ))),
                                ],
                              ),
                            ],
                          ) ,
                      ),
                   ) ,
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: (){
                              calcBMI(); 
                              setState(() {
                                
                              });
                            }, child: Text("Calculate"), 
                            
                            style:ElevatedButton.styleFrom(          
                            backgroundColor: Colors.deepOrange , 
                            foregroundColor: Colors.white , 
                          ),),
                        )
                  ],
                ),
              )
        )
          ) , 
      ) ;
  }

  Widget buildCounterCard({
    required String title ,
     required int value ,
      required Function onIncrease ,
      required Function onDecrease}) {

    return Card(
                          color: Colors.blueGrey,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(title , style: TextStyle(
                                  fontSize: 30 , 
                                  fontWeight: FontWeight.bold, 
                                ),) ,
                                Text( value.toString(), style: TextStyle(
                                  fontSize: 30 , 
                                  fontWeight: FontWeight.bold, 
                                  color: Colors.white,
                                ),) ,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(onPressed:(){
                                  onIncrease() ;
                                },
                                 icon: Icon(Icons.add), 
                                 color: Colors.white,) ,
                                IconButton(onPressed:(){
                                  onDecrease() ; 
                                },
                                 icon: Icon(Icons.remove), 
                                 color: Colors.white,) ,
                              ],
                            )
                              ],
                            ),
                          ),
                        );
  } } 

  // SingleChildScrollView(
  //           child: SizedBox(
  //             height: 500,
  //             child: Column(
  //               children: [
  //                 Expanded(child: Container(
  //                   color: Colors.blue,
  //                   width: 200,
  //                 )) , 
  //                 Text("I am Yusuf , 25 years old") , 
  //                 Text("I am Yusuf , 25 years old"), 
  //                 Text("I am Yusuf , 25 years old") , 
  //                 Text("I am Yusuf , 25 years old") , 
  //                 Text("I am Yusuf , 25 years old") , 
  //                 Text("I am Yusuf , 25 years old") , 
  //                 Text("I am Yusuf , 25 years old") , 
  //                 Text("I am Yusuf , 25 years old") , 
  //               ],
  //             ),
  //           ),
  //         ),
// Center(
//           child: Column(
//             children: [
//               Row(children: [
//                 Text("E-Youth App") ,
//                 Spacer(), 
//                 IconButton(onPressed: (){}, icon: Icon(Icons.settings))
//               ],) , 
              
//               SizedBox(height: 20,) ,
//               Row(
//                 children: [
//                   ElevatedButton(onPressed:(){} , child: Text("Cancel"), style:ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red ,
//                     foregroundColor: Colors.white

//                   ),)  ,  
//                   Spacer(),
//                   ElevatedButton(onPressed:(){} , child: Text("OK"), style:ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green , 
//                     foregroundColor: Colors.white
//                   ),) ,  
             
             
//              ],
//               ) ,
//               SizedBox(height: 20,) ,
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   ElevatedButton(onPressed:(){} , child: Text("Cancel"), style:ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red ,
//                     foregroundColor: Colors.white

//                   ),)  ,  
//                   ElevatedButton(onPressed:(){} , child: Text("OK"), style:ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green , 
//                     foregroundColor: Colors.white
//                   ),) , 
//              ],
//               ) ,
//               SizedBox(height: 20,) ,
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal:  8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     ElevatedButton(onPressed:(){} , child: Text("Cancel"), style:ElevatedButton.styleFrom(
//                       backgroundColor: Colors.red ,
//                       foregroundColor: Colors.white
                
//                     ),)  ,  
//                     ElevatedButton(onPressed:(){} , child: Text("OK"), style:ElevatedButton.styleFrom(
//                       backgroundColor: Colors.green , 
//                       foregroundColor: Colors.white
//                     ),) , 
//                              ],
//                 ),
//               ) ,
//               SizedBox(height: 20,) ,
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ElevatedButton(onPressed:(){} , child: Text("Cancel"), style:ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red ,
//                     foregroundColor: Colors.white
              
//                   ),)  ,  
//                   ElevatedButton(onPressed:(){} , child: Text("OK"), style:ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green , 
//                     foregroundColor: Colors.white
//                   ),) , 
//                            ],
//               ) ,
//               SizedBox(height: 20,) ,
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   ElevatedButton(onPressed:(){} , child: Text("Cancel"), style:ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red ,
//                     foregroundColor: Colors.white
              
//                   ),)  ,  
//                   ElevatedButton(onPressed:(){} , child: Text("OK"), style:ElevatedButton.styleFrom(
//                     backgroundColor: Colors.green , 
//                     foregroundColor: Colors.white
//                   ),) , 
//                            ],
//               ) ,

//               SizedBox(height: 20,) ,
//               Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       color: Colors.blue,
//                       height: 50,
//                     ),
//                   ) ,
//                   Flexible(child: Text("This is Text for testing responsive")), 
//                 ],
//               ),
//             ],
//           ),
//         )
// Center(
//           child: Row(
//             children: [
//               Expanded(
//                 flex: 3,
//                 child: Container(
//                   color: Colors.blue,
//                 ),
//               ), 
//               Expanded(
//                 flex: 1,
//                 child: Container(
//                   color: Colors.black,
//                 ),
//               ), 
//             ],
//           )
//           )