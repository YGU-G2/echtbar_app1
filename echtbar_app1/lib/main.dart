//import 'dart:html';

import 'package:echtbar_app1/app_branch.dart';
//import 'dart:collection';
// ignore: unused_import
import 'package:rflutter_alert/rflutter_alert.dart';

//import 'package:echtbar_app1/qustion.dart';
import 'package:flutter/material.dart';
AppBranin appBranin = AppBranin();

void main() {
  runApp(const ExamApp());
   

}


class ExamApp extends StatelessWidget {
  const ExamApp({super.key});

// const ExamApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300] ,
        appBar: AppBar(
          backgroundColor: Colors.grey ,
          title:const Text("echtbar"),
        ),
          body:const Padding(
            padding: EdgeInsets.all(20.0),
            child: Exampage(),
        

          ),
      
      ),
    );
  }
}
class Exampage  extends StatefulWidget {
  
  const Exampage({super.key});

  //const Exampage({super.key});

  @override
  State<Exampage> createState() => _ExampageState();
}
 

class _ExampageState extends State<Exampage> {
  
 
 
 //int _con=0;
  List <Padding>ansert =[

   
  ];
  int rigt =0;
 // ignore: non_constant_identifier_names
 void Chaanser(bool wituserpiced){
   bool   corrrect = appBranin.gustionaswrt() ;
     setState(() {
              if(wituserpiced == corrrect){
                rigt++;

            ansert.add(
              const Padding(
                padding: EdgeInsets.all(3.0),
                child: Icon(Icons.thumb_up,
                            color: Colors.green,
                            ),
              ),
            );
              
                    
              
              }
              else {
                // ignore: avoid_print
              
                     ansert.add(
              const Padding(
                padding: EdgeInsets.all(3.0),
                child: Icon(Icons.thumb_up,
                            color: Colors.red,
                            ),
              ),
            );
                

                  }
              if(appBranin. vansh() == true){
                Alert(
                  context: context,
                  title: "exit ecthbsar",
                  desc: "لثد اجت علئ $rigt 7 اسئلة ",
                  buttons: [
                      DialogButton(
                        // ignore: sort_child_properties_last
                        child:const Text(
                          "ابدء اللعب من جديد",
                          style:  TextStyle(color: Colors.white, fontSize: 20),
                        ),
                    onPressed: () => Navigator.pop(context),
                    width: 120,
                )
              ],
                ).show();
                 appBranin.reseat();

                 ansert =[
                
                 ];
                   rigt = 0;
              }else{
                 appBranin.next();
              }
           
        
          
             // qun.first;
             
              });

 }


  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children:ansert ,
               
          

        ),
       Expanded(
        flex: 5,
        child: Column(children: [
           Image.asset( appBranin.gustinimage()),
            const SizedBox(height: 20.0),
            Text(
            appBranin.getwithintext(),
           textAlign: TextAlign.center ,
           style:  const TextStyle(
            fontSize:20.0,
           ),
           ),
           
        ],
        ),
       ),
        Expanded(child: Padding(
          
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          
          child: FilledButton(
            onPressed: () { 
              // ignore: unused_local_variable
              Chaanser(true);
             
             },
             
            child:  const Text("yes",
            style: TextStyle(
             
              fontSize: 22.0, 
              color: Colors.white,
               backgroundColor: Colors.green,
            ),
            ),
          
          ),
           
        ),
        
        ),
        Expanded(child: Padding( 
          
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          
          child: FilledButton(
            
           //child: Colors.deepOrange
            onPressed: () {
              Chaanser(false);
                
            },
            
            child: 
      
             const Text("no",
            style: TextStyle(
               backgroundColor: Colors.green,
              fontSize: 22.0, 
              color: Colors.white,
            ),
            ),
               
          ),
          
        ),
        ),
      ],
      
    );
           
  }
}




