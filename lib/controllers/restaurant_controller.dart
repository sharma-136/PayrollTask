import 'package:flutter/material.dart';
import 'package:food_ordering_app/models/restaurant_model.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class RestaurantController extends GetxController {
  @override
  void onInit() {
    print('start1');
    fetchData();
    super.onInit();
  }

  TextEditingController searchController = TextEditingController();
  List jsonList=[];
  void fetchData() async {
    print('start2');

    Dio dio = Dio();
    print('start3');

    final response = await dio.get('https://mocki.io/v1/2b599b7e-1886-4c21-a42e-d34e56fffcbc');
    print('start4');
    print(response.statusCode);

     jsonList=response.data as List;
     update();
     print(jsonList);
     print('imagelink ${jsonList[2]}');
    print('imagelink ${jsonList[3]}');

    print('length ${jsonList.length}');
    // print('start5 $res');
    //
    // List<Restaurant> jsonList = (response.data as List)
    //     .map((item) => Restaurant.fromJson(item))
    //     .toList();

    // List<Restaurant> restaurants = [];
    // for(Restaurant restaurant in restaurants){
    //
    // }
    if(response.statusCode==200){
      // print('jsonlist123 $jsonList');
    }
  }
}
