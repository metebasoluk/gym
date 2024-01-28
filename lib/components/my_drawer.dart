import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  void logout(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,//Theme.of(context).colorScheme.background
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
          

          DrawerHeader(child: Icon(Icons.person,
          size: 128,
          color: Theme.of(context).colorScheme.inversePrimary,)),


          //const SizedBox(height: 15,),


          Padding(
            padding: const EdgeInsets.only(left:25.0),
            child: ListTile(
              leading:  Icon(Icons.home,color: Theme.of(context).colorScheme.inversePrimary,),
              title: const Text("A N A S A Y F A",),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),



          Padding(
            padding: const EdgeInsets.only(left:25.0),
            child: ListTile(
              leading:  Icon(Icons.person,color: Theme.of(context).colorScheme.inversePrimary,),
              title: const Text("P R O F İ L",),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context,'/profile_page');
              },
            ),



          ),

        
          

         



        ],),
        
         Padding(
            
            padding: const EdgeInsets.only(left:25.0,bottom: 5.0),
            child: ListTile(
              leading:  Icon(Icons.logout,color: Theme.of(context).colorScheme.inversePrimary,),
              title: const Text("Ç I K I Ş  Y A P",),
              onTap: () {
                Navigator.pop(context);

                //açılacak
                logout();
              },
            ),
          ),
        
        ],
      ),
    );
  }
}