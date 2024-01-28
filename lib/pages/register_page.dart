import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gym/components/my_button.dart';
import 'package:gym/components/my_textfield.dart';
import 'package:gym/helper/helper_functions.dart';

class RegisterPage extends StatefulWidget {


  final void Function()? onTap;

  const RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  
  final TextEditingController emailController=TextEditingController();

  final TextEditingController usernameController=TextEditingController();

  final TextEditingController passwordController=TextEditingController();

  final TextEditingController confirmPwController=TextEditingController();

  //register methode
  Future<void> registerUser() async {
    //show loading circle

    showDialog(context: context, builder: (context) => const Center(child: CircularProgressIndicator(),
    ),
    );


    //make sure password match

    if (passwordController.text!=confirmPwController.text) {
      //pop loading circle
      Navigator.pop(context);
      displayMessageToUser("Şifre eşleşmiyor!",context);

    }else{ try{

      //kullanıcı olustur

      
      // ignore: unused_local_variable
      UserCredential? userCredential= await FirebaseAuth.instance.
      createUserWithEmailAndPassword(email:emailController.text,
      password:passwordController.text,);



      createUserDocument(userCredential);

      
      
      if (context.mounted)Navigator.pop(context);

    }on FirebaseAuthException catch(e){
      
      
      Navigator.pop(context);
      
    
      displayMessageToUser(e.code, context);
    }}


    //try creating the user


  }





  Future<void>createUserDocument(UserCredential? userCredential) async{
    if(userCredential != null && userCredential.user !=null){
      await FirebaseFirestore.instance
      .collection("Users")
      .doc(userCredential.user!.email)
      .set({
        'email':userCredential.user!.email,
        'username':usernameController.text,
        'weight':'...',
        'length':'...',
        'average':'...',

        



      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  
                  
              //logo
                  
              Icon(Icons.person,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,),
                  
              // App name
                  
              const Text('G Y M',style: TextStyle(fontSize: 20),),
                  
              const SizedBox(height: 20,),
                  
                  
              // Username textfield
              MyTextField(hintText: 'Username', 
              obsecureText: false, 
              controller: usernameController),
          
              const SizedBox(height: 15,),

              // email textfield
              MyTextField(hintText: 'Email', 
              obsecureText: false, 
              controller: emailController),
          
              const SizedBox(height: 15,),

              
              // password textfield
                  
              MyTextField(hintText: 'Password',
               obsecureText: true,
               controller: passwordController),
          
              const SizedBox(height: 15,),


              // password confirm textfield
                  
              MyTextField(hintText: 'Confirm Password',
               obsecureText: true,
               controller: confirmPwController),
          
              const SizedBox(height: 15,),
          
                  
              
                  
                  
              
          
              const SizedBox(height: 20,),
                  
              
                  
              //Register kaydol
          
              MyButton(text: 'Kaydol' , onTap: registerUser),
                  
              
              const SizedBox(height: 20,),


              
              //  Already have an account ---> Zaten hesabınız var mı?
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text("Zaten hesabınız var mı?",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),

                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text("  Giriş yapın!",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  
                  
                  ],
                  
              ),
                  
                  
                  
                  
              ],
            ),
          ),
        ),
      ),
    );
  }
}