import'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 120,),
           Center(
             child: Column(
               children: [
                 Text('Profile',style: TextStyle(
                   fontWeight: FontWeight.w600,
                   fontSize: 20
                 ),),
                 SizedBox(height: 40,),
                 ClipOval(
                   child: CircleAvatar(
                     radius: 50,
                     child: Image.network('https://tse3.mm.bing.net/th?id=OIP.jTdMyj0VXTbWViHk9B7rYgHaEK&pid=Api&P=0&h=180'),
                   ),
                 ),
                 SizedBox(height: 20,),
                 Text('David Willey',style: TextStyle(
                     fontWeight: FontWeight.w400,
                     fontSize: 16,
                   color: Colors.black
                 ),),
                 SizedBox(height: 10,),
                 Text('102nd st Ports,New York',style: TextStyle(
                     fontWeight: FontWeight.w400,
                     fontSize: 15,
                     color: Colors.grey.shade600
                 ),),
                 SizedBox(height: 10,),
                 Text('458-347-4256',style: TextStyle(
                     fontWeight: FontWeight.w400,
                     fontSize: 15,
                     color: Colors.grey.shade600
                 ),),
               ],
             ),
           ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Image.asset('assets/bag.png',height: 30,
            width: 30,),
            ],
          )
        ],
      ),
    );
  }
}
