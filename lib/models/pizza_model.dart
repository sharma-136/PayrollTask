
import 'dart:convert';

List<Products> productsFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
  String catName;
  List<Product> product;

  Products({
    required this.catName,
    required this.product,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    catName: json["Cat_name"],
    product: List<Product>.from(json["Product"].map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Cat_name": catName,
    "Product": List<dynamic>.from(product.map((x) => x.toJson())),
  };
}

class Product {
  String productname;
  String productDescription;
  double price;
  String productImage;

  Product({
    required this.productname,
    required this.productDescription,
    required this.price,
    required this.productImage,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    productname: json["Productname"],
    productDescription: json["ProductDescription"],
    price: json["Price"]?.toDouble(),
    productImage: json["ProductImage"],
  );

  Map<String, dynamic> toJson() => {
    "Productname": productname,
    "ProductDescription": productDescription,
    "Price": price,
    "ProductImage": productImage,
  };
}
