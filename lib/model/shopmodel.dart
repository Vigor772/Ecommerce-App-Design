import 'dart:convert';
import 'package:flutter/material.dart';

class ShopModel extends ChangeNotifier {
  late String shopname;

  Map<String, dynamic> toMap() {
    return {
      'shopname': shopname,
    };
  }

  String toJson() {
    return jsonEncode(toMap());
  }

  shopInfo(shop) {
    shopname = shop;
    notifyListeners();
  }
}
