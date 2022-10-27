import 'dart:convert';
import 'package:flutter/material.dart';

class ShopModel extends ChangeNotifier {
  late String shopName;
  late String shopRating;
  late String shopLogo;
  late String shopCover;

  shopInfo(name, rating, logo, cover) {
    shopName = name;
    shopRating = rating;
    shopLogo = logo;
    shopCover = cover;
    notifyListeners();
  }
}
