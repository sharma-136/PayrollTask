import 'package:flutter/material.dart';
import 'package:food_ordering_app/controllers/auth_controller.dart';
import 'package:food_ordering_app/screens/auth/register_screen.dart';
import 'package:food_ordering_app/utils/buttons.dart';
import 'package:food_ordering_app/widgets/custom_text_field.dart';
import 'package:get/get.dart';

import '../start_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<AuthController>(builder: (controller) {
          return Padding(padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             const Align(
               alignment: Alignment.center,
               child:  Text('Login',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),),
             ),
              CustomTextField(
                  label: 'Email',
                  hint: 'Enter Your Email', controller: controller.emailController),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  label: 'Password',
                  hint: 'Enter Your Password', controller: controller.passwordController),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                child: FractionallySizedBox(
                  widthFactor: 1,
                  child: Buttons(
                    onPressed: (){
                      Get.toNamed('/start');
                    },
                    buttonText: 'Login',
                  ),
                ),
              ),
              Center(
                child: InkWell(
                  onTap: (){
                    // Get.to(RegisterScreen());
                  },
                  child: RichText(text:const TextSpan(
                    text: 'Don\'t have account? ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black
                    ),
                    children: [
                      TextSpan(
                        text: 'Log in',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.blue
                        )
                      )
                    ]
                  ),

                  ),
                ),
              )
            ],),);
        })
    );
  }
}
