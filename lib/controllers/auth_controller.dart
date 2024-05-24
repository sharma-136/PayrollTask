import'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/auth/login_screen.dart';

class AuthController extends GetxController{

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final userNameController = TextEditingController();

  @override
  void onInit(){
    super.onInit();
  }

   void registerValidate(){
     if(nameController.text.trim().isEmpty){

     }else if(userNameController.text.trim().isEmpty){}
     else if(emailController.text.trim().isEmpty){}
     else if(passwordController.text.trim().isEmpty){}
     else{
       register();
     }
   }

  void register() {
     Get.to(LoginScreen());
  }
}