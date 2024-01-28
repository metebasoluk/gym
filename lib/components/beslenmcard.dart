import 'package:flutter/material.dart';
class BeslenmeCard extends StatelessWidget {
  final String day;
  final String food;
  final String item;
  const BeslenmeCard({super.key,required this.day,required this.food,required this.item});

  @override
  Widget build(BuildContext context) {
    return  ListView(
        children: [
          
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[200],
              ),


              child:  Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
              
              
                  children: [
                    const SizedBox(height: 15,),
          Center(child:  Text(day,style: TextStyle(fontSize: 20),)),
                    SizedBox(height: 25,),
                    Text(food,style: TextStyle(fontSize: 18, ),),
                    SizedBox(height: 15,),
                    Center(child: Text(item,style: TextStyle(fontSize: 16, ),)),
                    


              
                  ],
                ),
              ),
              ),
          ),
        ],
      );
  }
}