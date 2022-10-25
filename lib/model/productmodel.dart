import 'package:flutter/material.dart';

class ProductModel extends ChangeNotifier {
  late String productName;
  late String productPrice;
  late String shopName;
  late String productDescription;
  late int quantity;
  late String productImage;
  late String tags;
  late bool variation;

  productInfo(name, price, shop, description, quanti, image, tag, variations) {
    productName = name;
    productPrice = price;
    shopName = shop;
    productDescription = description;
    quantity = quanti;
    productImage = image;
    tags = tag;
    variation = variations;
    notifyListeners();
  }
}
