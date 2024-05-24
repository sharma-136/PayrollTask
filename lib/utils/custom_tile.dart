import'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screens/dashboard/category_screen.dart';
class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key,
    required String productName,
    required image,
    required restaurantName,
    required String rating,
    required location,
    required away});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(()=>CategoryScreen());
      },
      child: ListTile(
        title:Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  height: 200,
                 child: Image.network(''),
                ),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all(width: 4)
                      ),
                      child:Image.asset('assets/arrow.png') ,
                    ),),
              ],
            ),
           const SizedBox(
              height: 15,
            ),
            Text(''),
            Row(
              children: [
                Expanded(
                  child: RatingBar.builder(
                      minRating: 1,
                      itemCount: 5,
                      allowHalfRating: true,
                      direction: Axis.horizontal,
                      itemBuilder: (context,rating){
                    return const Icon(Icons.star,size: 18,
                    color: Colors.amber,);
                  },
                      onRatingUpdate: (rating){
                    print(rating);
                      }),
                ),
                Text('dfd',style: TextStyle(
                  fontSize: 13
                ),)
              ],
            )
          ],
        ) ,
      ),
    );
  }
}
