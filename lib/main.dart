import 'package:flutter/material.dart';
import 'package:swiggy/screen/component/Dineout.dart';
import 'package:swiggy/screen/component/dineOutDetailScreen.dart';
import 'package:swiggy/screen/component/dialogBox.dart';
import 'package:swiggy/screen/component/loginPage.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        '/home':(context)=>const LoginPage(),
        '/detail':(context)=>const DineOutScreen(),
        '/dialog':(context)=>const DialogueBox(),
        '/':(context)=>const offerpage(),
      }
    );
  }
}
