import 'package:flutter/material.dart';


class Restaurant {
  String productName;
  String image;
  String restaurantName;
  double rating;
  String location;
  String away;

  Restaurant({
    required this.productName,
    required this.image,
    required this.restaurantName,
    required this.rating,
    required this.location,
    required this.away,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
    productName: json["productName"],
    image: json["image"],
    restaurantName: json["restaurantName"],
    rating: json["rating"]?.toDouble(),
    location: json["location"],
    away: json["away"],
  );

  Map<String, dynamic> toJson() => {
    "productName": productName,
    "image": image,
    "restaurantName": restaurantName,
    "rating": rating,
    "location": location,
    "away": away,
  };
}
