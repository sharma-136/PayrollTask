import 'package:flutter/material.dart';
import 'package:food_ordering_app/utils/constant_colors.dart';
import 'package:food_ordering_app/widgets/custom_text_field.dart';
import 'package:get/get.dart';

import '../../controllers/restaurant_controller.dart';
import '../../utils/custom_tile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        body: GetBuilder<RestaurantController>(
            init: RestaurantController(),
            builder: (controller) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Deliver to:',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '08776 Serenity Ports,New York',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: ConstantColors.peach),
                          child: const Icon(
                            Icons.person_outline,
                            fill: 0.4,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // CustomTextField(
                    //   showBox: true,
                    //   hint: 'Search for a vendor or product',
                    //     controller: searchController,
                    // prefix: Padding(
                    //   padding: const EdgeInsets.all(15.0),
                    //   child: Image.asset('assets/search.png'),
                    // ),),
                    TextField(
                      controller: controller.searchController,
                      maxLines: 1,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 20,
                          ),
                          child: Image.asset(
                            'assets/search.png',
                            height: 10,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        hintText: 'Search for a vendor or product',
                        hintStyle: const TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          // Adjust the radius as needed
                          borderSide: BorderSide.none, // Hide the border
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          // Adjust the radius as needed
                          borderSide: BorderSide.none, // Hide the border
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          // Adjust the radius as needed
                          borderSide: BorderSide.none, // Hide the border
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      children: [
                        Expanded(
                            child: Text(
                          'Popular Restaurant',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        )),
                        Text(
                          'View all',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),

                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return
                             CustomListTile(
                               productName:controller.jsonList[index]['productName'] as String,
                               image:controller.jsonList[index]['image'],
                               restaurantName:controller.jsonList[index]['restaurantName'],
                               rating:controller.jsonList[index]['rating'] as String,
                               location:controller.jsonList[index]['location'],
                               away:controller.jsonList[index]['away']
                             );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(height: 20);
                        },
                        itemCount: 10,
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
