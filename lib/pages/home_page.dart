
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gym/TODO/todo_app.dart';
import 'package:gym/components/my_drawer.dart';
import 'package:gym/pages/agirlik_page.dart';
import 'package:gym/pages/nutrition_page.dart';




class HomePage extends StatefulWidget {
    const HomePage({super.key});
   

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   final currentUser =FirebaseAuth.instance.currentUser!;
  
   final userCollection = FirebaseFirestore.instance.collection('Users');


   

   
  //int selectedIndex=0;


  //List page= [const Home(),const DenemePage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //appBar: AppBar(title: const Text("               G Y M",
      //style: TextStyle(color: Colors.black,fontSize: 25),),backgroundColor:Colors.grey[500] ,
     // elevation: 0,
     // ),
     appBar: AppBar(
      title: const Text("               G Y M",
      style: TextStyle(color: Colors.black,fontSize: 25),),backgroundColor:Colors.grey[300] ,
      elevation: 0,


    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon:  Icon(
            Icons.menu,color: Colors.grey[800],
            size: 30,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
  ),
      drawer:const MyDrawer(),
      backgroundColor: Colors.white,
      
      body: ListView(children: [
        GestureDetector(onTap: () { print("hadi bakalım");},
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 200,
                  
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image:  const DecorationImage(image:AssetImage('assets/images/ust.jpg',),fit: BoxFit.cover),
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
                  child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                  
                  const Padding(
                    padding: EdgeInsets.only(left:16.0),
                    child: Row(
                      children: [
                        Text("Hoşgeldin :)",style: TextStyle(color: Colors.white,fontSize: 25)),
                        SizedBox(height: 10),
                  
                        
                      ],
                    ),
                  ),
                  
                  
                  
                  Row(
                    children: [
                      Padding(
                        
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(currentUser.email!,
                        textAlign: TextAlign.center,style: const TextStyle(color: Colors.white,fontSize: 18),
                        
                        ),
                      ),
                    ],
                  ),
                  
                ]
                ),
                          
                  
                ),
              ),
            ),



       
        const SizedBox(height: 25,),

        
         const Center(child: Text("Seçenekler",style: TextStyle(color: Colors.black,fontSize: 20))),
      
        
        const SizedBox(height: 25,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            GestureDetector(onTap: () { Navigator.push(context,MaterialPageRoute(builder: (context) => AgirlikPage(),)
            );},
              child: Container(
                height: 100,
                width: 175,
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
                child: const Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text("AĞIRLIK",style: TextStyle(color: Colors.white,fontSize: 15)),
                  
                ),
                
              ),
            ),
            GestureDetector(
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => TodoApp(),)
            );},
              child: Container(
                height: 100,
                width: 175,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image:  const DecorationImage(
                    
                    
                    image:AssetImage('assets/images/d1.jpg',),fit: BoxFit.cover),
                    boxShadow:const [BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 10,
                        spreadRadius: 10,
                      ),],
            
                  
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[400],
                ),
            
                child: Padding(
                  padding: const EdgeInsets.only(right:55.0),
                  child: const Text("Yapılacaklar",style: TextStyle(color: Colors.white,fontSize: 15), ),
                ),
                
              ),
            ),
            
          ],
        ),
         const SizedBox(height: 35,),

       
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            GestureDetector(onTap: () { Navigator.push(context,MaterialPageRoute(builder: (context) => BeslenmePage(),)
            );},
              child: Container(
                
                height: 100,
                width: 375,
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                  image:  const DecorationImage(image:AssetImage('assets/images/beslenme.jpg',),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.green,
                  boxShadow:const [BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 50,
                      spreadRadius: 6,
                    ),
                  ] 
                ),
              child: const Padding(
                padding: EdgeInsets.only(right:30.0),
                child: Text("BESLENME",style: TextStyle(color: Colors.black,fontSize: 18)),
              ),
              

                
              ),
            ),

            
            
          ],
        ),
        const SizedBox(height: 105,),



  


        

        
        

        


      ],

        
      ),
    );
  }
}















     

    /*
      body: 
      
      
      page[selectedIndex],   
      



      
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Anasayfa',),
        NavigationDestination(icon: Icon(Icons.timeline), label: 'kalori'),
        NavigationDestination(icon: Icon(Icons.person), label: 'profil'),
      ],
      selectedIndex: selectedIndex,
      onDestinationSelected:(value) {
        setState(() {
          selectedIndex =value;
        });
      },
      
      backgroundColor: Colors.lightGreenAccent[200],
      
      ),
      */



     