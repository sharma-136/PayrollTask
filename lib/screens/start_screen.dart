import'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app/utils/buttons.dart';
import 'package:get/get.dart';

import '../utils/navigation_bar_page.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
            ),
               Image.asset('assets/start.png'),
           // const SizedBox(height: 26,),
             const Expanded(
               child: Column(
                children: [
                  Text('Food to blow your mind!',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Whether you\'re craving pizza,sushi, or something in',
                  style: TextStyle(
                      color: Colors.blueGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 15
                  ),),
                  Text('between we have got your back.',
                    style: TextStyle(
                      color: Colors.blueGrey,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),),
               
                ],
                           ),
             ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FractionallySizedBox(
                widthFactor: 1,
                child: Buttons(
                  onPressed: (){
                    Get.to(NavigationPage());
                  },
                  buttonText: 'Get Started',
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
