import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_ordering_app/controllers/category_controller.dart';
import 'package:food_ordering_app/screens/dashboard/selected_item_screen.dart';
import 'package:food_ordering_app/utils/constant_colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../models/cakehouse_model.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CategoryController>(
        init: CategoryController(),
        builder: (controller) {
          if (controller.productsList.isEmpty) {
            print('demanding${controller.productsList}');
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return DefaultTabController(
            length: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  Get.arguments['image'],
                  height: 300,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              Get.arguments['restaurantName'],
                              style: const TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w700),
                            ),
                          ),
                          const Text('20-30 mins delivery'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: RatingBarIndicator(
                                rating: Get.arguments['rating'],
                                itemSize: 15,
                                itemCount: 5,
                                direction: Axis.horizontal,
                                itemBuilder: (BuildContext context, _) {
                                  return const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  );
                                }),
                          ),
                          Text(
                            Get.arguments['away'],
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                       TabBar(
                        indicatorColor: ConstantColors.peach,
                        labelPadding: const EdgeInsets.all(2),
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: controller.category.map((e) => Tab(text: e,)).toList(),
                        // [
                        //   Tab(
                        //     text: 'combo',
                        //   ),
                        //   Tab(
                        //     text: 'classic',
                        //   ),
                        //   Tab(
                        //     text: 'primium',
                        //   ),
                        //   Tab(
                        //     text: 'sides',
                        //   ),
                        //   Tab(
                        //     text: 'drinks',
                        //   )
                        // ],
                      ),
                      SizedBox(
                        height: 300,
                        child:

                        TabBarView(
                          children: controller.category.asMap().entries.map((entry) {
                            int index = entry.key;
                            String cat = entry.value;
                            List products = controller.pro[index];

                            return ListView.builder(
                              itemCount: products.length,
                              itemBuilder: (context, index) {
                                final product = products[index];
                                return ListTile(
                                  leading: CircleAvatar(
                                      radius: 40,
                                      child: Image.network(product['ProductImage'])),
                                  title: Text(product['Productname']),
                                  subtitle: Text(product['ProductDescription']),
                                  trailing: Text('\$${product['Price']}'),
                                );
                              },
                            );
                          }).toList(),
                        // TabBarView(children: [
                        //   findCategory('ComboS', controller),
                        //   findCategory('Classic', controller),
                        //   findCategory('Premium', controller),
                        //   findCategory('Sides', controller),
                        //   findCategory('Drinks', controller),
                        // ]
                        //
                        // ),
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget findCategory(String s, CategoryController controller) {
    List<Product> products = controller.productsList
        .firstWhere(
          (element) => element.catName.toLowerCase() == s.toLowerCase(),
        )
        .product;

    return ListView.separated(
        itemBuilder: (BuildContext context, index) {
          // print('set123${products[index]}');
          Product product = products[index];
          // print('get1234${product.productImage}');
          // print('get12345${product.productDescription}');
          print('sample1');
         return InkWell(
           onTap: (){
             Get.to(SelectedItemScreen());},
           child: ListTile(
             leading: CircleAvatar(
                 radius:40,
                 child: Image.network(product.productImage)),
             title: Text(product.productname),
             subtitle: Text(product.productDescription),
             trailing: Text(product.price.toString()),
           ),
         );
        },
        separatorBuilder: (context, index) {
          print('sample');
          return SizedBox(
            height: 15,
          );
        },
        itemCount: 2);
  }
}
