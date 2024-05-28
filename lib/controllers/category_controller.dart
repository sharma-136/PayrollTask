import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_ordering_app/models/cakehouse_model.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class CategoryController extends GetxController {

// List<Products> pro =[];
  @override
      void onInit() {
    print('cat1');
    // pro=fetchCategory();
    fetchCategory();
    print('cat2');

    super.onInit();
  }

  List<Products> productsList = [];
  Map mp={};
  List category=[];
  List pro = [];
  Future fetchCategory() async {
    print('cat3');

    Dio dio = Dio();
    final response = await dio
        .get('https://mocki.io/v1/0f4686f7-d380-471a-b319-6312177282dc');


    List<dynamic> jsonList = response.data as List;

    productsList = jsonList.map((json) => Products.fromJson(json)).toList();

    // widget.categories.map((category) => Tab(text: category.catName)).toList(),
    // widget.categories.map((category) => FoodListView(foodItems: category.products)).toList(),


    print('creatine ${jsonList}');
    print('${jsonList[0]['cat_name']}');
    for(var v in jsonList){
      print('started with');
      mp[v['Cat_name']]=v;
    }


    print('tested${mp}');
    // Map<String, dynamic> jsonMap = jsonDecode(mp as String);
    // Map<String, Products> categories = jsonMap.map((key, value) => MapEntry(key, Products.fromJson(value)));
    // print('dread${categories}');

    List l=[];
    for(var v in mp.values){
      l.add(v);
    }
   // List category =[];
   //  List pro = [];
    mp.forEach((key, value) {
      category.add(value['Cat_name']);
      pro.add(value['Product']);
      print('typc${value['Cat_name']}');
      print('typy${value['Product']}');
    });
    print('deeee${category}');
    print('beeee${pro}');

   update();
  }
}
