import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/auth/login_screen.dart';
import 'package:food_ordering_app/screens/auth/register_screen.dart';
import 'package:food_ordering_app/screens/dashboard/bag_screen.dart';
import 'package:food_ordering_app/screens/dashboard/home_screen.dart';
import 'package:food_ordering_app/screens/dashboard/order_screen.dart';
import 'package:food_ordering_app/screens/dashboard/profile_screen.dart';
import 'package:food_ordering_app/screens/start_screen.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      // home: StartScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/',page: ()=>RegisterScreen()),
        GetPage(name: '/login',page: ()=>LoginScreen()),
        GetPage(name: '/start',page: ()=>StartScreen()),
        GetPage(name: '/home',page: ()=>Home()),
        GetPage(name: '/bag-screen',page: ()=>BagScreen()),
        GetPage(name: '/order',page: ()=>OrderScreen()),
        GetPage(name: '/profile',page: ()=>ProfileScreen())
      ],
    );
  }
}
