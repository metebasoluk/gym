import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gym/components/my_back_button.dart';
import 'package:gym/components/text_box.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilePage> {
  final currentUser =FirebaseAuth.instance.currentUser!;
  final userCollection = FirebaseFirestore.instance.collection('Users');





  Future<void>editField(String field)async{

    String newValue="";
    await showDialog(
     context: context,
     builder: (context)=>AlertDialog(
      backgroundColor: Colors.grey[900],
      title: Text("Düzenle $field",
      style: const TextStyle(color: Colors.white),
     
      ),
      content: TextField(
        autofocus: true,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: "Yeni Değeri Giriniz!! $field",
          hintStyle: const TextStyle(color: Colors.grey,),

        ),
        onChanged: (value){
          newValue=value;
        },


      ),

      actions: [TextButton(
       onPressed: () =>Navigator.pop(context),
       child:const Text('İptal',style: TextStyle(color: Colors.white),),
      
      
      ),

      TextButton(
       onPressed: () =>Navigator.of(context).pop(newValue),
       child:const Text('Güncelle',style: TextStyle(color: Colors.white),),
      
      
      ),
      ],
     ),

     
     );

     if (newValue.trim().length>0) {
      await userCollection.doc(currentUser.email).update({field:newValue});
       
     }

  }


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

     

     
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("Users").doc(currentUser.email).snapshots(),
         builder: (context,snapshot){
          if (snapshot.hasData) {
            final userData = snapshot.data!.data() as Map<String,dynamic>;

            return ListView(
        children:  [
          

          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.only(left:10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                MyBackButton(),
                 

              ],
            ),
          ),

          const Icon(Icons.person,
          size: 72,color: Colors.black,),


         
          Text(currentUser.email!,
          textAlign: TextAlign.center,style: const TextStyle(color: Colors.black,fontSize: 16),
          ),

          const SizedBox(height: 30,),

          const Padding(
            padding: EdgeInsets.only(left:25.0),
            child: Text('Bilgilerim',style: TextStyle(color: Colors.black,fontSize: 16),),
          ),


          MyTextBox(sectionName: 'Kullanıcı Adı:',
           text:userData['username'],
            onPressed: () => editField('username'),
            ),
            MyTextBox(sectionName: 'Kilo:',
           text: userData['weight'],
            onPressed: () => editField('weight'),
            ),
            MyTextBox(sectionName: 'Boy:',
           text: userData['length'],
            onPressed: () => editField('length'),
            ),
            MyTextBox(sectionName: 'Ortalama:',
           text:userData['average'],
            onPressed: () => editField('average'),
            ),
            


            





        ],
      );
          }else if(snapshot.hasError){
            return Center(child: Text('Hata${snapshot.error}'),);
          }
          return const Center(child:CircularProgressIndicator(),);
         },
         ),
    );
  }
}