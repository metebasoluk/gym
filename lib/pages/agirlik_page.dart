import 'package:flutter/material.dart';
import 'package:gym/pages/detailsPage/back_page.dart';
import 'package:gym/pages/detailsPage/biceps.dart';
import 'package:gym/pages/detailsPage/shoulder_page.dart';
import 'package:gym/pages/detailsPage/yeni_baslayanlar.dart';

import 'detailsPage/leg_page.dart';

class AgirlikPage extends StatelessWidget {
  const AgirlikPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

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

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
                  height: 125,
                  
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image:  const DecorationImage(image:AssetImage('assets/images/d4.jpg',),fit: BoxFit.cover),
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
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 160),
                        child: Text("Ağırlık Antrenmanı Nedir?",style: TextStyle(color: Colors.white,fontSize: 18)),
                        
                      ),
                    ],
                  ),
                  
                ),
          ),
          const SizedBox(height:5,),
           const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Ağırlık antrenmanı, kasların hacmini (kas hipertrofisi) ve gücünü arttırmaya yönelik egzersiz çeşididir.",
            style: TextStyle(color: Colors.black,fontSize: 16),),
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => YeniBaslayanlar()));},
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
                                child: Text("Yeni Başlayanlar için tüm vücut \nantrenmanları  (1-3 ay arasında)",style: TextStyle(color: Colors.white,fontSize: 14)),
                                
                              ),
                              
                
                              Icon(Icons.arrow_forward_ios),
                
                             
                            ],
                            
                            
                            
                
                            
                
                          ),
                          
                          
                        ),
                ),
              ),


              
              
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            children: [


              

              GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => BicepsPage()));
                  
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                          height: 75,
                          width: 175,
                          
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            //image:  const DecorationImage(image:AssetImage('assets/images/ust.jpg',),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.red[500],
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
                                padding: EdgeInsets.all(20),
                                child: Text("Ön Ve Arka Kol\nAntrenmanları",style: TextStyle(color: Colors.white,fontSize: 14)),
                                
                              ),
              
                              Icon(Icons.arrow_forward_ios),
              
                             
                            ],
                            
                            
                            
              
                            
              
                          ),
                          
                        ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => ShoulderPage()));
                  
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                          height: 75,
                          width: 175,
                          
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            //image:  const DecorationImage(image:AssetImage('assets/images/ust.jpg',),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.red[500],
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
                                padding: EdgeInsets.all(20),
                                child: Text("Omuz\nAntrenmanları",style: TextStyle(color: Colors.white,fontSize: 14)),
                                
                              ),
              
                              Icon(Icons.arrow_forward_ios),
              
                             
                            ],
                       
                          ),
                          
                        ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 15,),



          Row(
            children: [


              

              GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => BackPage()));
                  
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                          height: 75,
                          width: 175,
                          
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            //image:  const DecorationImage(image:AssetImage('assets/images/ust.jpg',),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.red[500],
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
                                padding: EdgeInsets.all(20),
                                child: Text("Sırt\nAntrenmanları",style: TextStyle(color: Colors.white,fontSize: 14)),
                                
                              ),
              
                              Icon(Icons.arrow_forward_ios),
              
                             
                            ],
                            
                            
                            
              
                            
              
                          ),
                          
                        ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => LegPage()));
                  
                },
                

                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                          height: 75,
                          width: 175,
                          
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            //image:  const DecorationImage(image:AssetImage('assets/images/ust.jpg',),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.red[500],
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
                                padding: EdgeInsets.all(20),
                                child: Text("Bacak\nAntrenmanları",style: TextStyle(color: Colors.white,fontSize: 14)),
                                
                              ),
              
                              Icon(Icons.arrow_forward_ios),
              
                             
                            ],
                       
                          ),
                          
                        ),
                ),
              ),
            ],
          ),



         
        ],
      ),
      
    );
  }
}