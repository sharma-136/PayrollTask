import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screens/dashboard/category_screen.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile({
    super.key,
    required this.productName,
    required this.image,
    required this.restaurantName,
    required this.rating,
    required this.location,
    required this.away,
  });

  final String away;
  final String location;
  final double rating;
  final String restaurantName;
  final String productName;
  final String image;

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => CategoryScreen(),
        arguments: {
          'productName':widget.productName,
          'restaurantName':widget.restaurantName,
          'image':widget.image,
          'rating':widget.rating,
          'away':widget.away,
          'location':widget.location
        },);
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
             borderRadius:BorderRadius.circular(35),
                  child: Image.network(widget.image,fit: BoxFit.cover,
                  width: Get.width,height: 200,),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,

                        border: Border.all(color:Colors.white,width: 4)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset('assets/arrow.png'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(widget.restaurantName,style: const TextStyle(
              fontSize: 20,fontWeight: FontWeight.w500
            ),),
            Row(
              children: [
                Expanded(
                    child: RatingBarIndicator(
                      rating: widget.rating,
                  itemBuilder: (BuildContext context, int index) {
                    return const Icon(
                      Icons.star,
                      color: Colors.amber,
                    );

                  },
                      itemCount: 5,
                      itemSize: 20,
                  direction: Axis.horizontal,
                )),
                const Icon(Icons.location_on),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.away,
                  style: const TextStyle(fontSize: 13),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
