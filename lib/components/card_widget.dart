import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            width:double.infinity ,
            height: double.maxFinite,
            
            child:  Card(color: Colors.deepPurple[500],
              shadowColor: Colors.purple,
              elevation: 10,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              child: Container(
                
                
                height:100,
                width:100,
                
              ),

              
          
                ),
          ),
        )),
    );
  }
}