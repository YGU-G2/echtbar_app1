//import 'dart:ffi';

import 'qustion.dart';
class AppBranin{

  int _con =0;
  

   List<Qustion> qoustup =[

    
      Qustion(
        
      
        
  
      
       'images/image-1.jpg',
           "عدد الكواكب  في المجموعه الشمس هي ثمانية كواكب",
         true,

    
      ),
      Qustion(
        
     
      'images/image-2.jpg',
        'القطط هي حيوانات لحمة',
      true,

      ),
  Qustion(
        
        'images/image-3.jpg',
        ' الصين موجودة في قاره افريقيا ',
        false,

      ),

       Qustion(
         
         'images/image-4.jpg',
         'الارض مسطحة وليست كروية',
         false,

      ),
 Qustion(
         
         'images/image-5.jpg',
         'بستطاعة الانسان البقاء على قيد الحياة بدون اكل اللحوم',
         true,

      ),
       Qustion(
         
         'images/image-6.jpg',
         'الشمش تدور حول الارض والارض تدور حول القمر',
         false,

      ),
       Qustion(
         
         'images/image-7.jpg',
         'الحيوانات لاتشعر بالالم',
         false,

      ),
     

  ];

  void next()
  {
    if(_con < qoustup.length -1 ){
      _con++;
    }
  }
  String getwithintext( ){
     return  qoustup[_con].qustiontext;

  }
  String gustinimage(){
    return qoustup[_con].qustioimage;

  }
  
  bool gustionaswrt(){
    return qoustup[_con].qustionanswrt;

  }
  bool vansh()
  {
    if(_con >= qoustup.length-1){
      
      return true;
    }
    else {
   return false;
    }
    
  }
 void  reseat(){
  _con=0;
 }
}
