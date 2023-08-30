import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/auth/signup.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Welcome',
      home: SignUp(),
    );
  }
}
