import 'package:flutter/material.dart';

class BackPage extends StatelessWidget {
  const BackPage({super.key});

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
      children: [
        const SizedBox(height: 10,),

          const Center(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Text("Sırt Antrenmanları:",style: TextStyle(color: Colors.black,fontSize: 20),),

              
            ),
          ),

          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://www.fitnessandbeast.com/wp-content/uploads/2016/02/Lat-pulldown-gif.gif'),
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
            child: Text("Lat Pulldown  \n\n3 set 12 tekrar yapın.",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),


           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 330,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://www.fitnessandbeast.com/wp-content/uploads/2016/02/Close-grip-lat-pulldown-gif.gif'),
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
            child: Text("Close Grip Lat Pulldown \n\n3 set 12 tekrar yapın.",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),



           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 320,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://i0.wp.com/post.healthline.com/wp-content/uploads/2022/03/HL-02.02.SeatedRow.gif?h=840'),
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
            child: Text("Seated Cable Row\n\n3 set 12 tekrar yapın.",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),

      ],
      ),
    );
  }
}