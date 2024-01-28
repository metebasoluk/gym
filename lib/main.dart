import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/auth/auth.dart';
import 'package:gym/firebase_options.dart';
import 'package:gym/pages/agirlik_page.dart';
import 'package:gym/pages/home_page.dart';
import 'package:gym/pages/profile_page.dart';
import 'package:gym/theme/dark_mode.dart';
import 'package:gym/theme/light_mode.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const AuthPage(),

      theme: lightMode,

      darkTheme: darkMode,
      routes: {
        '/home_page':(context)=>const HomePage(),
        '/profile_page':(context)=> const ProfilePage(),
        '/agirlik_page':(context) => const AgirlikPage(),
      },
      
    );
  }
}

