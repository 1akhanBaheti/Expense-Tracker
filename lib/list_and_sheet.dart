import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'data.dart';
import 'chart.dart';

class full extends StatefulWidget {
  full({Key? key}) : super(key: key);

  @override
  _fullState createState() => _fullState();
}

class _fullState extends State<full> {




 
  List<Data2> data2 = [];

 

  var title = TextEditingController();
  var des = TextEditingController();
  var  date = TextEditingController();
  late DateTime date1 ;

  void sheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) {
        return Container(
          width: double.infinity,
          height: 690,
          child: Card(
            elevation: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Container(
                  margin: EdgeInsets.all(10),
                  
                  child: Text('Add expense',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),)),
                Container(
                    margin: EdgeInsets.only(left:10,right: 15,top: 15),
                  child: TextFormField(
                    cursorColor: Colors.deepPurple,
                  
                    controller: title,
                    decoration: InputDecoration(
                      labelText: "Title",
                      labelStyle: TextStyle(fontSize: 18,color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 3,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                margin: EdgeInsets.only(left:10,right: 15,top: 10),
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    controller: des,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey.shade200,
                        ),
                      ),
                      labelText: "Price",
                      labelStyle:
                          TextStyle(fontSize: 22, color: Colors.grey),
                      hoverColor: Colors.deepPurple,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Container(
                   margin: EdgeInsets.only(left:10,right: 15,top: 10),
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    keyboardType: null,
                    readOnly: true,
                    decoration: InputDecoration(

                       enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      labelText: "Date",
                      labelStyle:
                          TextStyle(fontSize: 19, color: Colors.grey),
                      hoverColor: Colors.deepPurple,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    onTap: datepicker,
                    showCursor: false,
                    controller: date,
                  ),
                ),
SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                     setState(
                          () {
                            data2.add(Data2(title.text, double.parse(des.text),
                                date1));
                           
                                title.clear();
                                des.clear();
                               date.clear();
                          },
                        );
                        Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    decoration: BoxDecoration(
                       color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(8)
                    ),
                            
                             padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: 
                     Text("save",style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                     ),),
                   
                  ),
                ),
              ],
            ),
          ),
        );
      },
      enableDrag: true,
    );
  }

  void datepicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(Duration(days: 365)),
      lastDate: DateTime.now(),
    ).then(
      (value) {
        
        setState(() {
          date.text =DateFormat.yMMMd().format(value!);
          date1 =value;
         
          
        });
        

        // print(DateFormat.yMd(value).toString());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return 
   
    LayoutBuilder(  builder:( ctx ,constraints)
    {
      return 
   
    Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
       Container(
          width: double.infinity,
          height: (constraints.maxHeight) *0.25,
          child:
      
              name(listreturn),
             
       ),
       Container(
         margin: EdgeInsets.only(left:8),
         child: Text('Track Your Expense :',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.brown[900]),),
       ),
       SizedBox(height: 6,),
       Stack(
         children: [
        Container(
          //padding: EdgeInsets.all(20),
       //  height : 300,
      // color: Colors.amberAccent,
         //height  :( MediaQuery.of(context).size.height ) *0.8 ,
         height : (constraints.maxHeight ) *0.71,
        // height: 250,
         child :
         MediaQuery.removePadding(context: context, 
         removeTop: true,
         
            child: ListView.builder(
              
              shrinkWrap: true,
              //padding: EdgeInsets.all(15),

              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  // color: Colors.pink,
                  //   padding: EdgeInsets.all(10),
                    //padding: EdgeInsets.all(3),
                  width: double.infinity,

                  child: Card(
                    elevation: 0,
                   // color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.00)),
                    // color: Colors.amberAccent,
                    child: InkWell(
                      onTap: () {
                        remove(data2[index]);
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: double.infinity,
                        //color: Colors.amberAccent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              //margin: EdgeInsets.only(top: 3),
                              
                             padding: EdgeInsets.all(3),
                           //  alignment: Alignment.bottomLeft,
                            height: 55,
                            width: 55,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                shape: BoxShape.circle,
                              // borderRadius: BorderRadius.circular(10)
                                
                                
                                ),
                              
                              // width: double.infinity,
                             // color: Colors.deepPurple,
                              child:
                              FittedBox(
                                
                                child:
                                
                               Text(
                                   '\₹${data2[index].amount.round()}' 
                                                                 // "$" + {data2[index].amount.toString()}
                                                                 ,
                                                                 textAlign: TextAlign.center,
                                                                 style: TextStyle(
                                                                     color: Colors.white,
                                                                     fontSize: 17,
                                                                    // fontWeight: FontWeight.bold
                                                                     ),
                                                               ),
                                                               ),
                                                             ),
                                                             Expanded(
                                                              // margin: EdgeInsets.only(left : 20),
                                                              flex: 3,
                                                               child :
                                                             Column(
                                                               children: [
                                                                 Container(

                                                                   width: MediaQuery.of(context).size.width - 60,
                                                                   margin: EdgeInsets.only(left: 30),
                                                                  
                                                                   //color: Colors.deepPurple,
                                                                   
                                                                   // width: double.infinity,
                                                                   //margin: EdgeInsets.only(left: 100),
                                                                   // padding: EdgeInsets.only(left: 10),
                                                                   child: Text(
                                                                     data2[index].title.toString(),
                                                                     textAlign: TextAlign.left,
                                                                     style: TextStyle(fontSize: 19 , fontWeight:FontWeight.w500),
                                                                     maxLines: 1,
                                                                   ),
                                                                 ),
                                                                 Container(
                                                                   // width: MediaQuery.of(context).size.width,
                                                                   width: MediaQuery.of(context).size.width - 60,
                                                                   margin: EdgeInsets.only(left: 30),
                                                                   child: Text(DateFormat.yMMMd().format(data2[index].date)),
                                                                 ),
                                                               ],
                                                             ),
                                                             ),
                                                           ],
                                                         ),
                                                       ),
                                                     ),
                                                   ),
                                                 );
                                               },
                                               itemCount: data2.length,
                                             ),
                                           ),
              ),
                                        Container(
                                           width: double.infinity,
                                         // height: MediaQuery.of(context).size.height * 0.8,
                                         height : (constraints.maxHeight )*0.71,
                                         
                                         //height: 580,
                                        margin: EdgeInsets.only(right: 5,),
                                        padding: EdgeInsets.all(5),
                                          // color: Colors.deepPurple,
                                           alignment: Alignment.bottomRight,
                                           child: FloatingActionButton(
                                             
                                             backgroundColor: Colors.deepPurple,
                                             onPressed: sheet,
                                             child: Icon(Icons.add),
                                           ),
                                         ),
                                        
              
                                       ],
       ),
      ],
    );
    }
    );
                                   }
                                 
                                   void remove(var da) {
                                     setState(() {
                                       data2.remove(da);
                                     });
                                   } 
                                    List<Data2>get listreturn {
                                    return data2.where((tx) {
                                     
                                     return tx.date.isAfter(DateTime.now().subtract(Duration(days: 7)));
                                    }).toList();
                                  }
                                 
                                 }
                                 
                                
