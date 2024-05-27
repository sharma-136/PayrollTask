import'package:flutter/material.dart';
import 'package:food_ordering_app/screens/start_screen.dart';
import 'package:food_ordering_app/utils/constant_colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 120,),
           Center(
             child: Column(
               children: [
                 const Text('Profile',style: TextStyle(
                   fontWeight: FontWeight.w600,
                   fontSize: 20
                 ),),
                 const SizedBox(height: 40,),
                 ClipOval(
                   child: CircleAvatar(
                     radius: 50,
                     child: Image.network('https://tse3.mm.bing.net/th?id=OIP.jTdMyj0VXTbWViHk9B7rYgHaEK&pid=Api&P=0&h=180'),
                   ),
                 ),
                 const SizedBox(height: 20,),
                 const Text('David Willey',style: TextStyle(
                     fontWeight: FontWeight.w400,
                     fontSize: 16,
                   color: Colors.black
                 ),),
                 const SizedBox(height: 10,),
                 Text('102nd st Ports,New York',style: TextStyle(
                     fontWeight: FontWeight.w400,
                     fontSize: 15,
                     color: Colors.grey.shade600
                 ),),
                 const SizedBox(height: 10,),
                 Text('458-347-4256',style: TextStyle(
                     fontWeight: FontWeight.w400,
                     fontSize: 15,
                     color: Colors.grey.shade600
                 ),),
               ],
             ),
           ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Image.asset('assets/card.png',height: 30,
                  width: 30,),
                    const SizedBox(width: 40,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Payment methods',style: TextStyle(
                          fontWeight: FontWeight.w600
                        ),),
                        Text('2 cards added')
                      ],
                    )
                  ],
                ),
               const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/home.png',height: 30,
                      width: 30,),
                   const SizedBox(width: 40,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Delivery address',style: TextStyle(
                            fontWeight: FontWeight.w600
                        ),),
                        Text('102nd st Ports,New York')
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/setting.png',height: 30,
                      width: 30,),
                    const SizedBox(width: 40,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Settings',style: TextStyle(
                            fontWeight: FontWeight.w600
                        ),),
                        Text('Notification|FAQ|Contact')
                      ],
                    )
                  ],
                ),
               const SizedBox(
                  height: 40,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap:(){
                        Get.offAll(()=>StartScreen());
                      },
                      child: Container(
                        height:50,
                        decoration: const BoxDecoration(
                          color: ConstantColors.beach,
                          shape: BoxShape.circle
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/logout.png'),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
