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

  Future fetchCategory() async {
    print('cat3');

    Dio dio = Dio();
    final response = await dio
        .get('https://mocki.io/v1/0f4686f7-d380-471a-b319-6312177282dc');


    List<dynamic> jsonList = response.data as List;

    productsList = jsonList.map((json) => Products.fromJson(json)).toList();

    // Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);

    print('creatine ${jsonList}');
    print('${jsonList[0]['cat_name']}');
    for(var v in jsonList){
      print('started with');
      mp[v['Cat_name']]=v;
    }

    // for(var v in mp.values){
    //   print('da$v');
    // }
    print('tested${mp}');


   update();
  }
}
