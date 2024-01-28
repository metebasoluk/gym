import 'package:flutter/material.dart';

class LegPage extends StatelessWidget {
  const LegPage({super.key});

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
              child: Text("Bacak Antrenmanları:",style: TextStyle(color: Colors.black,fontSize: 20),),
            ),
          ),

          const SizedBox(height: 15,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 350,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://usercontent.one/wp/www.gymguider.com/wp-content/uploads/2017/10/static1.squarespace.gif?media=1674222935'),
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
            child: Text("Barbell Squat\n\n3 set 12 tekrar yapın.",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),
          const SizedBox(height: 15,),


           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 220,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://i.makeagif.com/media/3-23-2019/BWViX-.gif'),
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
            child: Text("Leg Press\n\n3 set 12 tekrar yapın.",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),
          const SizedBox(height: 15,),

           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 220,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://media.tenor.com/YtkG_5GRhjcAAAAC/leg-curl.gif'),
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
            child: Text("Lying Leg Curl\n\n3 set 12 tekrar yapın.",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),
          const SizedBox(height: 15,),


           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 220,
                    
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
          image: NetworkImage('https://i.pinimg.com/originals/01/b1/f6/01b1f6b432a9890ea9f16d26bfe40cf4.gif'),
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
            child: Text("Leg Extension \n\n3 set 12 tekrar yapın.",
            style: TextStyle(color: Colors.black,fontSize: 18),),
            
          ),
          const SizedBox(height: 15,),


          









           
         
        ],
      ),
    );
  }
}