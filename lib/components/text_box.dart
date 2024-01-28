import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {

  final sectionName;
  final text; 
  final void Function()? onPressed;
  const MyTextBox({super.key,required this.sectionName,required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12)


      ),
      padding: const EdgeInsets.only(left: 15,bottom: 15),
      margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(sectionName,
              style:  TextStyle(color: Colors.black,),
              ),

              IconButton(onPressed:onPressed,
              icon:  Icon(Icons.settings,color: Colors.grey[500],),
              ),
            ],
          ),

          const SizedBox(height: 30,),
          Text(text,style: const TextStyle(color: Colors.black)),
          ],
      ),
    );
  }
}