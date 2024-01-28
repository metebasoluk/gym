import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gym/components/my_button.dart';
import 'package:gym/components/my_textfield.dart';
import 'package:gym/helper/helper_functions.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  
  final TextEditingController resetPwController=TextEditingController();
  @override
  void dispose() {
    
    resetPwController.dispose();
    super.dispose();
  }

  


  Future passwordReset()async{
   try{ await FirebaseAuth.instance
    .sendPasswordResetEmail(email: resetPwController.text.trim());
    showDialog(context: context, builder: (context){
      return const AlertDialog(
        content: Text('Başarıyla gönderildi!! Email\'inizi kontrol ediniz!!'),
      );
      });
    
    }on FirebaseAuthException catch(e){
      displayMessageToUser(e.code, context);
      
     
      
    
      
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body:  Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Sıfırlanacak şifreniz için email giriniz. ",style: TextStyle(fontSize: 20),),
                  const SizedBox(height: 15,),


                  MyTextField(hintText: 'Email', 
                      obsecureText: false, 
                      controller: resetPwController),
                  const SizedBox(height: 15,),
                  Center(child: MyButton(text: 'Şifreyi sıfırla' , onTap: passwordReset)),
              
                ]
              ),
            ),
          ),


          //for reset password email textfield
             

            
        ],
      ),
    );
  }
}