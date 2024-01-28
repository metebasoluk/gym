import 'package:flutter/material.dart';
import 'package:gym/pages/detailsPage/arka_kol.dart';
import 'package:gym/pages/detailsPage/onkol_page.dart';



class BicepsPage extends StatefulWidget {
  const BicepsPage({super.key});

  @override
  State<BicepsPage> createState() => _BicepsPageState();
}

class _BicepsPageState extends State<BicepsPage> {



  @override
  void initState(){
    super.initState();
   
    
      
  }
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
            //Future.delayed(Duration(seconds: 2), () {
              //   Navigator.pop(context);
                //});

              Navigator.pop(context,);
            

            
            
            
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
      
      ),
      body: ListView(
        children: [Padding(
                padding: const EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => OnKol()));},
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
                                child: Text("Ön Kol",style: TextStyle(color: Colors.white,fontSize: 14)),
                                
                              ),
                              
                
                              Icon(Icons.arrow_forward_ios),
                
                             
                            ],
                            
                            
                            
                
                            
                
                          ),
                          
                          
                        ),
                ),
              ),

          
          const SizedBox(height: 15,),

          Padding(
                padding: const EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => ArkaKol()));},
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
                                child: Text("Arka Kol",style: TextStyle(color: Colors.white,fontSize: 14)),
                                
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