
import 'package:flutter/material.dart';
import 'package:flutter_application_2/chartbar.dart';
import 'package:flutter_application_2/data.dart';
import 'package:intl/intl.dart';


class name extends StatelessWidget {
 
List<Data2> listItems;
    name(this.listItems);

   List<Map<String,Object> >get sevendaylist{
     var totalamount1 =0.0;
     return List.generate(7, (index)  {
           
     var weekDay =DateTime.now().subtract(Duration(days: index));
     var totalamount2=0.0;
     for(int i=0;i<listItems.length ;i++)
     {
       
       if(listItems[i].date.day == weekDay.day && listItems[i].date.month == weekDay.month &&
       listItems[i].date.year == weekDay.year )
       {
         totalamount2 +=listItems[i].amount;
         totalamount1 += listItems[i].amount;
       }
     }
                return
                {
                     'DAY':DateFormat.E().format(weekDay),
                     'totalamount':totalamount1,
                     'amountofday':totalamount2
                };


                                      });
   }
       double get totalpercentage
       {
         var percen=0.0;
         for(int i =0; i<sevendaylist.length ;i++)
         { 
                  percen += (sevendaylist[i]['amountofday'] as double);
                    
                  
         }
         return percen;
       }

  @override
  Widget build(BuildContext context) {

    print(sevendaylist);
    return
        Container(
       //   width: double.infinity,
          //height: MediaQuery.of(context).size.height *0.2,
          padding: EdgeInsets.all(12),
          child:
      Card(
        //color: Colors.grey[100],
        elevation: 0,
        child :
       
    Row(
      
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: sevendaylist.map((tx)
      {
        print('${tx['DAY']}\n' );
        print (totalpercentage);
        print((tx['amountofday'] as double )/ (totalpercentage));

               return 
               Flexible(
               //  mainAxisAlignment: MainAxisAlignment.center,
              
               fit: FlexFit.tight,
                 child:
                 
                   
                   chartBar(tx['DAY'], tx['amountofday'] ,   tx['totalamount'] ==0.0 ? 0.0 : (tx['amountofday'] as double )/ totalpercentage),
                   
                 //  SizedBox(width : 28),
                 
               )
                ;
               

      }
      ).toList(),
   
    ),
      ),
        
      
    );
    
    
    
  }

}