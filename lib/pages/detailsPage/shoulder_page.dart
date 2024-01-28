import 'package:flutter/material.dart';

class ShoulderPage extends StatelessWidget {
  const ShoulderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(title: const Text("               G Y M",style: TextStyle(color: Colors.black,fontSize: 25),),backgroundColor:Colors.grey[300] ,elevation: 0,
      leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon:  Icon(
            Icons.arrow_back_ios,color: Colors.grey[800],
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
      
      ),

      body: ListView(

        children:  [

          const SizedBox(height: 10,),

          const Center(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text("Omuz Antrenmanları:",style: TextStyle(color: Colors.black,fontSize: 20),),

              
            ),
          ),

          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 220,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://cdn.jefit.com/assets/img/exercises/gifs/32.gif'),
          fit: BoxFit.cover
        ) ,
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[400],
                      boxShadow:const [BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10,
                          spreadRadius: 10,
                        ),
                      ] 
                      
                    ),
            ),
            
          ),

          const SizedBox(height: 15,),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("Lateral Raises \n\n3 set 12 tekrar yapın.",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),


           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://149874912.v2.pressablecdn.com/wp-content/uploads/2020/11/Seated-dumbbell-shoulder-press.gif'),
          fit: BoxFit.cover
        ) ,
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[400],
                      boxShadow:const [BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10,
                          spreadRadius: 10,
                        ),
                      ] 
                      
                    ),
            ),
            
          ),

          const SizedBox(height: 15,),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("Dumbbell Shoulder Press \n\n3 set 12 tekrar yapın.",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),



           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 320,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://www.barbellfrontraise.com/wp-content/uploads/2022/09/dumbbell-front-shoulder-raises-2.gif'),
          fit: BoxFit.cover
        ) ,
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[400],
                      boxShadow:const [BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10,
                          spreadRadius: 10,
                        ),
                      ] 
                      
                    ),
            ),
            
          ),

          const SizedBox(height: 15,),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text("Dumbbell Front Raise\n\n3 set 12 tekrar yapın.",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),

        ],
      ),
    );
  }
}