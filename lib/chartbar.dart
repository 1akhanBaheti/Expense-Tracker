
import 'package:flutter/material.dart';

class chartBar extends StatelessWidget {
  
  var totalamount;
  var day ;
  var percentage;
  chartBar(this.day,this.totalamount,this.percentage);

  @override
  Widget build(BuildContext context) {
    return 
    
    Column
    (
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    Container(
      
      //fit: FlexFit.tight,
      child: Text(day.toString()),
        
    ),
    
    Container(
          
          height: 80,
          width: 12,
          child: Stack(children: [
            Container(
             decoration: BoxDecoration(
               border: Border.all(color :Colors.grey,width: 1) ,
            // color: Colors.deepPurple,
             borderRadius: BorderRadius.circular(6),
             color: Color.fromARGB(255,224,224,224),
             ),
             
            ),
            FractionallySizedBox(
              
              alignment: Alignment.bottomCenter,
              heightFactor: percentage ,
              child: Container(
                
              decoration: BoxDecoration(border : Border.all( width : 2,color:Colors.brown ) ,
             color: Colors.deepPurple,
             borderRadius: BorderRadius.circular(4),
              ),
            ),
            ),
          
          ],),
           
    ),
    
    FittedBox(
     // fit: FlexFit.tight,
      child :
      Text((totalamount.toString()),),
    ),
         
            
      ],
         
      );
      
      
  }
}
