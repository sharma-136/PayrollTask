import 'package:flutter/material.dart';
import 'package:food_ordering_app/controllers/auth_controller.dart';
import 'package:food_ordering_app/widgets/custom_text_field.dart';
import 'package:get/get.dart';

import '../../utils/buttons.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final userNameController = TextEditingController();

    return Scaffold (
      body: GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller){
        print('printing123');
       return
         Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Create Account',
                style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  label: 'Name',
                  hint: 'Enter Your Name',
                  controller: nameController),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                label: 'username',
                hint: 'Enter username',
                controller:userNameController,
                prefix: const Icon(Icons.person),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                label: 'Email',
                hint: 'Enter Your Email',
                controller: emailController,
                prefix:const Icon(Icons.email_outlined),),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  label: 'password',
                  hint: 'Enter Your Password',
                  controller: passwordController),
              const SizedBox(
                height: 20,
              ),
              // Spacer(),
              Padding(padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                child: FractionallySizedBox(
                  widthFactor: 1,
                  child:Buttons(
                    buttonText: 'Sign up',
                    onPressed: (){
                      Get.toNamed('/login');
                    },
                  ) ,
                ),
              ),
              InkWell(
                onTap: (){
                  Get.toNamed('/login');
                },
                child: RichText(
                  text: const TextSpan(
                    text: 'Already have an account?',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black
                  ),
                    children: [
                      TextSpan(
                        text: 'Login',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.blue
                      )
                      )
                    ]
                  ),

                ),
              )
            ],
          ),
        );
      },

      ),
    );
  }
}
