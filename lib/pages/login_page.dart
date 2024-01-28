

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gym/components/my_button.dart';
import 'package:gym/components/my_textfield.dart';
import 'package:gym/helper/helper_functions.dart';
import 'package:gym/pages/forget_pw_page.dart';

class LoginPage extends StatefulWidget {
  
  final void Function()? onTap;


  const LoginPage({super.key,
    required this.onTap,

  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController=TextEditingController();

  final TextEditingController passwordController=TextEditingController();

  void login()async{

    showDialog(context: context, builder: (context) => const Center(child: CircularProgressIndicator(),
    ),
    );

    //giriş yap


    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);

      //loading circle

      if (context.mounted) Navigator.pop(context);

    }
    on FirebaseAuthException catch(e){Navigator.pop(context);
    //hata göster
    displayMessageToUser(e.code, context);
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
          
                  
              /*
               // forget password
              const SizedBox(height: 15,),

              
              Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Parolanızı mı unuttunuz?',
                  style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                )const SizedBox(height: 15,),
              ],
              ),*/ 
                  
                  
              // forget password
              


              Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const ForgetPasswordPage();
                    }));
                    
                  },
                  child: Text(
                    'Parolanızı mı unuttunuz?',
                    style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                  ),
                )
              ],
              ),
          
              const SizedBox(height: 20,),
                  
              
                  
              //sing in buttoon
          
              MyButton(text: 'Giriş' , onTap: login),
                  
              //  dont have an account  hesabınız yok mu?
              const SizedBox(height: 20,),


              // register here  buraya kaydolun
                  
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text("Hesabınız yok mu?",style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),

                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text("  Buradan kaydolun!",style: TextStyle(
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