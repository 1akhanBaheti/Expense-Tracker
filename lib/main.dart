import 'package:flutter/material.dart';


import 'list_and_sheet.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {

  

  void printl() {
    print('pressed!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home()
    );
  }
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appbar =   AppBar(
            title: Text('Expense Tracker'),
            backgroundColor: Colors.deepPurple,
          );
    return Scaffold(
        body:
        SingleChildScrollView(
          
          child:
        
         Column(children: [
          appbar,
         Container(
           height: MediaQuery.of(context).size.height -MediaQuery.of(context).viewPadding.top-appbar.preferredSize.height,
           child:
            
          full(),
           ),
         
        ],),
        ),
      );
  }
}