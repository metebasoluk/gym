import 'package:flutter/material.dart';
import 'package:gym/pages/detailsPage/first_week.dart';
import 'package:gym/pages/detailsPage/seconds_page.dart';
import 'package:gym/pages/detailsPage/week3.dart';
import 'package:gym/pages/detailsPage/week4.dart';

class BeslenmePage extends StatelessWidget {
  const BeslenmePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,

        appBar: AppBar(title: const Text("               G Y M",
        style: TextStyle(color: Colors.black,fontSize: 25),),
        backgroundColor:Colors.grey[300] ,
        elevation: 0,
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
          SizedBox(height: 20,),

          Center(child: const Text("Aylık Beslenme",style: TextStyle(fontSize: 20),)),

          SizedBox(height: 20,),
          Padding(
                padding: const EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => FirstWeek()));},
                  child: Container(
                          height: 75,
                          width: 380,
                          
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            //image:  const DecorationImage(image:AssetImage('assets/images/ust.jpg',),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.red[600],
                            boxShadow:const [BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 10,
                                spreadRadius: 10,
                              ),
                            ],
                            
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16),
                                child: Text("1. Hafta",style: TextStyle(color: Colors.white,fontSize: 18)),
                                
                              ),
                              
                
                              Icon(Icons.arrow_forward_ios),
                
                             
                            ],
                            
                            
                            
                
                            
                
                          ),
                          
                          
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Week2()));},
                  child: Container(
                          height: 75,
                          width: 380,
                          
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            //image:  const DecorationImage(image:AssetImage('assets/images/ust.jpg',),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.red[600],
                            boxShadow:const [BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 10,
                                spreadRadius: 10,
                              ),
                            ],
                            
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16),
                                child: Text("2. Hafta",style: TextStyle(color: Colors.white,fontSize: 18)),
                                
                              ),
                              
                
                              Icon(Icons.arrow_forward_ios),
                
                             
                            ],
                            
                            
                            
                
                            
                
                          ),
                          
                          
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Week3()));},
                  child: Container(
                          height: 75,
                          width: 380,
                          
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            //image:  const DecorationImage(image:AssetImage('assets/images/ust.jpg',),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.red[600],
                            boxShadow:const [BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 10,
                                spreadRadius: 10,
                              ),
                            ],
                            
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16),
                                child: Text("3. Hafta",style: TextStyle(color: Colors.white,fontSize: 18)),
                                
                              ),
                              
                
                              Icon(Icons.arrow_forward_ios),
                
                             
                            ],
                            
                            
                            
                
                            
                
                          ),
                          
                          
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Week4()));},
                  child: Container(
                          height: 75,
                          width: 380,
                          
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            //image:  const DecorationImage(image:AssetImage('assets/images/ust.jpg',),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.red[600],
                            boxShadow:const [BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 10,
                                spreadRadius: 10,
                              ),
                            ],
                            
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16),
                                child: Text("4. Hafta",style: TextStyle(color: Colors.white,fontSize: 18)),
                                
                              ),
                              
                
                              Icon(Icons.arrow_forward_ios),
                
                             
                            ],
                            
                            
                            
                
                            
                
                          ),
                          
                          
                        ),
                ),
              ),

        ],
      ),
    );
  }
}